package kr.co.mapspring.global.config;

import java.time.Duration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

@Configuration
public class RestTemplateConfig {

    // FastAPI 등 외부 API 호출에 사용할 RestTemplate Bean 등록
    // Client 클래스에서 직접 new RestTemplate()으로 생성하지 않음
    // Spring Bean으로 주입받아 사용하기 위한 설정
    @Bean
    public RestTemplate restTemplate(
            @Value("${fastapi.connect-timeout-ms:5000}") long connectTimeoutMs,
            @Value("${fastapi.read-timeout-ms:60000}") long readTimeoutMs
    ) {
        SimpleClientHttpRequestFactory requestFactory =
                new SimpleClientHttpRequestFactory();

        requestFactory.setConnectTimeout(Duration.ofMillis(connectTimeoutMs));
        requestFactory.setReadTimeout(Duration.ofMillis(readTimeoutMs));

        return new RestTemplate(requestFactory);
    }
}
