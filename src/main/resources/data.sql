SET FOREIGN_KEY_CHECKS = 0;

-- User
INSERT INTO user (user_id, email, name, birth_date, address, phone_number, password_hash, status, role, last_login_at, created_at, updated_at)
VALUES
    (1, 'ai-coaching-test@naver.com', 'AI코칭테스트', '2000-01-01', '서울시 강남구', '010-1111-2222', '$2a$10$3iIiVWk5lGjvRd/6r.HIXu8sbJog9.Gtvm/Z2nzEsqr2sVoUUx1me', 'ACTIVE', 'USER', NULL, NOW(), NOW()),
    (2, 'user2@test.com', '이민수', '2001-02-02', '서울시 마포구', '010-2222-2222', '$2a$10$3iIiVWk5lGjvRd/6r.HIXu8sbJog9.Gtvm/Z2nzEsqr2sVoUUx1me', 'ACTIVE', 'USER', NULL, NOW(), NOW()),
    (3, 'user3@test.com', '박지은', '2002-03-03', '서울시 서초구', '010-3333-3333', '$2a$10$3iIiVWk5lGjvRd/6r.HIXu8sbJog9.Gtvm/Z2nzEsqr2sVoUUx1me', 'ACTIVE', 'ADMIN', NULL, NOW(), NOW()),
    (4, 'user4@test.com', '김철수', '1999-04-04', '서울시 성동구', '010-4444-4444', '$2a$10$3iIiVWk5lGjvRd/6r.HIXu8sbJog9.Gtvm/Z2nzEsqr2sVoUUx1me', 'ACTIVE', 'USER', NULL, NOW(), NOW()),
    (5, 'user5@test.com', '최영희', '1998-05-05', '서울시 송파구', '010-5555-5555', '$2a$10$3iIiVWk5lGjvRd/6r.HIXu8sbJog9.Gtvm/Z2nzEsqr2sVoUUx1me', 'ACTIVE', 'USER', NULL, NOW(), NOW()),
    (6, 'user6@test.com', '정영수', '1997-06-06', '서울시 동작구', '010-6666-6666', '$2a$10$3iIiVWk5lGjvRd/6r.HIXu8sbJog9.Gtvm/Z2nzEsqr2sVoUUx1me', 'ACTIVE', 'USER', NULL, NOW(), NOW()),
    (7, 'user7@test.com', '한소희', '1996-07-07', '서울시 용산구', '010-7777-7777', '$2a$10$3iIiVWk5lGjvRd/6r.HIXu8sbJog9.Gtvm/Z2nzEsqr2sVoUUx1me', 'ACTIVE', 'USER', NULL, NOW(), NOW());
-- TERMS
INSERT INTO terms (title, content, version, term_type, is_required, is_active, created_at, updated_at)
VALUES
('서비스 이용약관', '서비스 이용약관 내용입니다.', 'v1.0', 'SERVICE', true, true, NOW(), NOW()),
('개인정보 수집 및 이용 동의', '개인정보 수집 및 이용 내용입니다.', 'v1.0', 'PRIVACY', true, true, NOW(), NOW()),
('마케팅 정보 수신 동의', '마케팅 수신 동의 내용입니다.', 'v1.0', 'MARKETING', false, true, NOW(), NOW());

-- SCENARIO
INSERT INTO scenario (scenario_id, prompt, scenario_description, complete_exp, category)
VALUES
(1, 'You are a cafe staff. Help the customer order drinks.', '카페에서 음료를 주문하는 상황', 10, 'CAFE'),
(2, 'You are a restaurant staff. Help the customer order food.', '식당에서 음식을 주문하는 상황', 15, 'RESTAURANT'),
(3, 'You are a hotel receptionist. Help the guest with hotel service.', '호텔에서 프론트 서비스를 이용하는 상황', 15, 'HOTEL'),
(4, 'You are an airport staff. Help the traveler at the airport.', '공항에서 여행 관련 도움을 받는 상황', 20, 'AIRPORT'),
(5, 'You are a shop assistant. Help the customer with shopping.', '매장에서 상품을 찾거나 결제하는 상황', 10, 'SHOPPING'),
(6, 'You are a museum staff. Help the visitor with museum information.', '박물관에서 관람 정보를 묻는 상황', 10, 'MUSEUM'),
(7, 'You are a subway station staff. Help the passenger use public transportation.', '대중교통 이용 방법을 묻는 상황', 10, 'TRANSPORT'),
(8, 'You are a hospital staff. Help the patient with basic hospital service.', '병원에서 접수나 진료 관련 도움을 받는 상황', 20, 'HOSPITAL'),
(9, 'You are a tourist information staff. Help the traveler with sightseeing.', '관광지에서 여행 정보를 묻는 상황', 10, 'TOURISM'),
(10, 'You are a bank staff. Help the customer with simple banking service.', '은행에서 기본 업무를 처리하는 상황', 20, 'BANK');

-- REGION
INSERT INTO region (region_id, country, city, latitude, longitude)
VALUES
(1, 'Korea', 'Seoul', 37.56650000, 126.97800000),
(2, 'Japan', 'Tokyo', 35.67620000, 139.65030000),
(3, 'USA', 'New York', 40.71280000, -74.00600000),
(4, 'UK', 'London', 51.50740000, -0.12780000),
(5, 'France', 'Paris', 48.85660000, 2.35220000);

-- MISSION
INSERT INTO mission (mission_title, mission_description, scenario_id)
VALUES
-- CAFE
('음료 주문하기', '원하는 음료를 영어로 주문해보세요.', 1),
('추천 메뉴 물어보기', '직원에게 추천 음료를 물어보세요.', 1),
('옵션 변경 요청하기', '사이즈, 얼음, 시럽 같은 옵션을 변경해보세요.', 1),

-- RESTAURANT
('음식 주문하기', '메뉴를 보고 원하는 음식을 주문해보세요.', 2),
('인기 메뉴 질문하기', '직원에게 인기 메뉴를 물어보세요.', 2),
('계산 요청하기', '식사 후 계산서를 요청해보세요.', 2),

-- HOTEL
('체크인 요청하기', '호텔 프론트에서 체크인을 요청해보세요.', 3),
('객실 정보 묻기', '조식, 와이파이, 체크아웃 시간을 물어보세요.', 3),
('불편 사항 말하기', '객실 문제를 직원에게 설명해보세요.', 3),

-- AIRPORT
('체크인하기', '공항 직원에게 체크인을 요청해보세요.', 4),
('탑승구 찾기', '탑승구 위치를 물어보세요.', 4),
('수하물 문의하기', '수하물 문제를 설명하고 도움을 요청해보세요.', 4),

-- SHOPPING
('상품 위치 묻기', '찾는 상품이 어디 있는지 물어보세요.', 5),
('가격 질문하기', '상품 가격과 할인 여부를 물어보세요.', 5),
('환불 요청하기', '구매한 상품의 환불을 요청해보세요.', 5),

-- MUSEUM
('입장권 구매하기', '박물관 입장권을 구매해보세요.', 6),
('전시 정보 묻기', '현재 진행 중인 전시에 대해 물어보세요.', 6),

-- TRANSPORT
('노선 물어보기', '목적지까지 가는 노선을 물어보세요.', 7),
('티켓 구매하기', '교통 티켓을 구매해보세요.', 7),
('환승 방법 묻기', '환승 방법을 직원에게 물어보세요.', 7),

-- HOSPITAL
('병원 접수하기', '병원 데스크에서 접수를 해보세요.', 8),
('증상 설명하기', '간단한 증상을 영어로 설명해보세요.', 8),
('예약 확인하기', '진료 예약 정보를 확인해보세요.', 8),

-- TOURISM
('관광지 정보 묻기', '관광지 운영 시간과 위치를 물어보세요.', 9),
('사진 요청하기', '다른 사람에게 사진 촬영을 부탁해보세요.', 9),
('길 묻기', '목적지까지 가는 길을 물어보세요.', 9),

-- BANK
('계좌 관련 문의하기', '은행에서 계좌 관련 기본 질문을 해보세요.', 10),
('환전 요청하기', '외화를 환전하고 싶다고 말해보세요.', 10);

-- PLACE
INSERT INTO place (
    place_id,
    google_place_id,
    place_name,
    place_description,
    place_address,
    latitude,
    longitude,
    region_id,
    scenario_id
)
VALUES
-- SEOUL
(1, 'demo-seoul-001', '스타벅스 노원점', '서울 북동부 카페', '서울특별시 노원구 상계동', 37.65419100, 127.05679300, 1, 1),
(2, 'demo-seoul-002', '구로디지털단지 맛집거리', '서울 서남부 식당', '서울특별시 구로구 구로동', 37.48521500, 126.90159400, 1, 2),
(3, 'demo-seoul-003', '롯데호텔 월드', '잠실권 호텔', '서울특별시 송파구 올림픽로', 37.51100000, 127.09800000, 1, 3),
(4, 'demo-seoul-004', '김포국제공항', '서울 서부 공항', '서울특별시 강서구 하늘길', 37.55830000, 126.79060000, 1, 4),
(5, 'demo-seoul-005', '현대백화점 목동점', '서울 서부 쇼핑몰', '서울특별시 양천구 목동', 37.52630000, 126.87500000, 1, 5),
(6, 'demo-seoul-006', '국립중앙박물관', '용산 대표 박물관', '서울특별시 용산구 서빙고로', 37.52385000, 126.98047000, 1, 6),
(7, 'demo-seoul-007', '강남역', '서울 남동부 주요 역', '서울특별시 강남구 강남대로', 37.49717500, 127.02792600, 1, 7),
(8, 'demo-seoul-008', '서울대학교병원', '서울 중심부 병원', '서울특별시 종로구 대학로', 37.57961700, 126.99900500, 1, 8),
(9, 'demo-seoul-009', '서울월드컵경기장', '서울 서북부 관광지', '서울특별시 마포구 성산동', 37.56825600, 126.89724000, 1, 9),
(10, 'demo-seoul-010', '우리은행 서울대입구점', '서울 남부 은행', '서울특별시 관악구 봉천동', 37.48124700, 126.95273900, 1, 10),

-- TOKYO
(11, 'demo-tokyo-001', '스타벅스 이케부쿠로점', '도쿄 북서부 카페', '도쿄 도시마구 이케부쿠로', 35.73015000, 139.71112000, 2, 1),
(12, 'demo-tokyo-002', '이치란 시부야점', '도쿄 서남부 식당', '도쿄 시부야구', 35.66006300, 139.69957300, 2, 2),
(13, 'demo-tokyo-003', '호텔 메트로폴리탄 도쿄 베이', '도쿄 동남부 호텔', '도쿄 고토구', 35.62760000, 139.78090000, 2, 3),
(14, 'demo-tokyo-004', '하네다 공항', '도쿄 남부 공항', '도쿄 오타구 하네다공항', 35.54939300, 139.77983900, 2, 4),
(15, 'demo-tokyo-005', '다이버시티 도쿄 플라자', '오다이바 쇼핑몰', '도쿄 고토구 오다이바', 35.62520000, 139.77580000, 2, 5),
(16, 'demo-tokyo-006', '도쿄국립박물관', '우에노 대표 박물관', '도쿄 다이토구 우에노공원', 35.71883500, 139.77652200, 2, 6),
(17, 'demo-tokyo-007', '신주쿠역', '도쿄 서부 주요 역', '도쿄 신주쿠구', 35.68960600, 139.70057100, 2, 7),
(18, 'demo-tokyo-008', '도쿄대학교병원', '도쿄 중심부 병원', '도쿄 분쿄구 혼고', 35.71273600, 139.76493600, 2, 8),
(19, 'demo-tokyo-009', '도쿄 스카이트리', '도쿄 동부 관광지', '도쿄 스미다구 오시아게', 35.71006300, 139.81070000, 2, 9),
(20, 'demo-tokyo-010', '미쓰비시UFJ은행 시나가와점', '도쿄 남부 은행', '도쿄 미나토구 시나가와', 35.62847500, 139.73876000, 2, 10),

-- NEW YORK
(21, 'demo-ny-001', '스타벅스 브롱크스점', '뉴욕 북부 카페', '뉴욕 브롱크스', 40.84478200, -73.86482700, 3, 1),
(22, 'demo-ny-002', '카츠 델리카트슨', '맨해튼 남부 식당', '뉴욕 맨해튼 로어이스트사이드', 40.72223300, -73.98741000, 3, 2),
(23, 'demo-ny-003', '플라자 호텔', '맨해튼 중심 호텔', '뉴욕 맨해튼 센트럴파크 남쪽', 40.76452600, -73.97416300, 3, 3),
(24, 'demo-ny-004', '존 F. 케네디 국제공항', '퀸즈 남동부 공항', '뉴욕 퀸즈 자메이카', 40.64131100, -73.77813900, 3, 4),
(25, 'demo-ny-005', '메이시스 헤럴드 스퀘어', '맨해튼 쇼핑몰', '뉴욕 맨해튼 헤럴드스퀘어', 40.75080200, -73.98930800, 3, 5),
(26, 'demo-ny-006', '메트로폴리탄 미술관', '어퍼이스트사이드 박물관', '뉴욕 맨해튼 5번가', 40.77943700, -73.96324400, 3, 6),
(27, 'demo-ny-007', '그랜드 센트럴 터미널', '맨해튼 주요 역', '뉴욕 맨해튼 미드타운', 40.75272600, -73.97722900, 3, 7),
(28, 'demo-ny-008', '뉴욕 프레스비테리언 병원', '맨해튼 북부 병원', '뉴욕 맨해튼 워싱턴하이츠', 40.84097600, -73.94180900, 3, 8),
(29, 'demo-ny-009', '코니아일랜드', '브루클린 남부 관광지', '뉴욕 브루클린 코니아일랜드', 40.57492600, -73.98594100, 3, 9),
(30, 'demo-ny-010', '뱅크오브아메리카 플러싱점', '퀸즈 은행', '뉴욕 퀸즈 플러싱', 40.75900000, -73.83030000, 3, 10),

-- LONDON
(31, 'demo-london-001', '스타벅스 캠든점', '런던 북부 카페', '런던 캠든', 51.53902600, -0.14255100, 4, 1),
(32, 'demo-london-002', '디슘 코벤트가든', '런던 중심부 레스토랑', '런던 코벤트가든', 51.51293000, -0.12613300, 4, 2),
(33, 'demo-london-003', '사보이 호텔', '런던 중심부 호텔', '런던 스트랜드', 51.51006500, -0.12092000, 4, 3),
(34, 'demo-london-004', '히드로 공항', '런던 서부 공항', '런던 히드로', 51.47002000, -0.45429500, 4, 4),
(35, 'demo-london-005', '웨스트필드 스트랫퍼드 시티', '런던 동부 쇼핑몰', '런던 스트랫퍼드', 51.54300000, -0.00600000, 4, 5),
(36, 'demo-london-006', '대영박물관', '런던 중심 박물관', '런던 블룸즈버리', 51.51941300, -0.12695700, 4, 6),
(37, 'demo-london-007', '킹스크로스역', '런던 북부 주요 역', '런던 킹스크로스', 51.53066300, -0.12319400, 4, 7),
(38, 'demo-london-008', '세인트 조지 병원', '런던 남서부 병원', '런던 투팅', 51.42670000, -0.17490000, 4, 8),
(39, 'demo-london-009', '그리니치 천문대', '런던 남동부 관광지', '런던 그리니치', 51.47685200, -0.00050000, 4, 9),
(40, 'demo-london-010', 'HSBC 카나리워프점', '런던 동부 은행', '런던 카나리워프', 51.50500000, -0.01800000, 4, 10),

-- PARIS
(41, 'demo-paris-001', '카페 드 플로르', '파리 중심부 카페', '파리 생제르맹', 48.85460000, 2.33390000, 5, 1),
(42, 'demo-paris-002', '르 를레 드 랑트르코트', '파리 서부 식당', '파리 8구', 48.87000000, 2.30700000, 5, 2),
(43, 'demo-paris-003', '리츠 파리 호텔', '파리 중심부 호텔', '파리 방돔 광장', 48.86861500, 2.32854300, 5, 3),
(44, 'demo-paris-004', '샤를드골 공항', '파리 북동부 공항', '파리 샤를드골 공항', 49.00969000, 2.54792500, 5, 4),
(45, 'demo-paris-005', '갤러리 라파예트', '파리 중심 쇼핑몰', '파리 오스만 거리', 48.87379100, 2.33229300, 5, 5),
(46, 'demo-paris-006', '루브르 박물관', '파리 대표 박물관', '파리 1구', 48.86061100, 2.33764400, 5, 6),
(47, 'demo-paris-007', '북역', '파리 북부 주요 역', '파리 10구', 48.88094800, 2.35531400, 5, 7),
(48, 'demo-paris-008', '앙리 몽도르 병원', '파리 남동부 병원', '파리 크레테유', 48.79500000, 2.45500000, 5, 8),
(49, 'demo-paris-009', '베르사유 궁전', '파리 서쪽 관광지', '베르사유', 48.80486500, 2.12035500, 5, 9),
(50, 'demo-paris-010', 'BNP 파리바 라데팡스점', '파리 서부 은행', '파리 라데팡스', 48.89180000, 2.23860000, 5, 10);

-- LEARNING SESSION
INSERT INTO learning_session (session_id, user_id, place_id, study_status, start_time, end_time)
VALUES
    (1, 1, 1, 'COMPLETED', NOW(), NOW()),
    (2, 1, 2, 'COMPLETED', NOW(), NOW()),
    (3, 2, 2, 'COMPLETED', NOW(), NOW()),
    (4, 3, 3, 'COMPLETED', NOW(), NOW()),
    (11, 1, 1, 'COMPLETED', NOW(), NOW()),
    (12, 2, 2, 'COMPLETED', NOW(), NOW()),
    (13, 3, 3, 'COMPLETED', NOW(), NOW()), -- 박지은(나)
    (14, 4, 4, 'COMPLETED', NOW(), NOW()),
    (15, 5, 5, 'COMPLETED', NOW(), NOW()),
    (16, 6, 6, 'COMPLETED', NOW(), NOW()),
    (17, 7, 7, 'COMPLETED', NOW(), NOW()),
    (18, 1, 8, 'COMPLETED', NOW(), NOW()),
    (19, 2, 9, 'COMPLETED', NOW(), NOW()),
    (20, 3, 10, 'COMPLETED', NOW(), NOW()), -- 박지은(나)
    (21, 4, 11, 'COMPLETED', NOW(), NOW()),
    (22, 5, 12, 'COMPLETED', NOW(), NOW()),
    (23, 6, 13, 'COMPLETED', NOW(), NOW()),
    (24, 7, 14, 'COMPLETED', NOW(), NOW()),
    (25, 1, 15, 'COMPLETED', NOW(), NOW());

-- MISSION SESSION
INSERT INTO mission_session (mission_session_id, session_id, mission_id, mission_status, started_at, completed_at)
VALUES
(1, 1, 1, 'COMPLETED', NOW() - INTERVAL 10 MINUTE, NOW()),
(2, 2, 2, 'COMPLETED', NOW() - INTERVAL 25 MINUTE, NOW()),
(3, 3, 2, 'COMPLETED', NOW() - INTERVAL 20 MINUTE, NOW()),
(4, 4, 4, 'COMPLETED', NOW() - INTERVAL 15 MINUTE, NOW());

-- SESSION MESSAGE
INSERT INTO session_message (session_id, mission_session_id, message, role, created_at)
VALUES
(1, 1, 'Good morning. What would you like to order?', 'ASSISTANT', NOW()),
(1, 1, 'I would like a latte with almond milk, please.', 'USER', NOW());

-- SESSION EVALUATION
INSERT INTO session_evaluation (session_id, evaluation)
VALUES
(1, '표현 좋음, 속도 개선 필요');

-- STUDY LOG
INSERT INTO study_log (study_log_id, user_id, session_id, study_type, earned_exp)
VALUES
(11, 1, 11, 'SCENARIO', 120),
(12, 2, 12, 'PLACE', 90),
(13, 3, 13, 'SCENARIO', 150),
(14, 4, 14, 'PLACE', 130),
(15, 5, 15, 'SCENARIO', 170),
(16, 6, 16, 'PLACE', 80),
(17, 7, 17, 'SCENARIO', 200),
(18, 1, 18, 'PLACE', 140),
(19, 2, 19, 'SCENARIO', 180),
(20, 3, 20, 'PLACE', 95),
(21, 4, 21, 'SCENARIO', 220),
(22, 5, 22, 'PLACE', 160),
(23, 6, 23, 'SCENARIO', 100),
(24, 7, 24, 'PLACE', 210),
(25, 1, 25, 'SCENARIO', 250);


-- STUDY SCORE
INSERT INTO study_score (study_score_id, study_log_id, naturalness_score, fluency_score, total_score)
VALUES
(11, 11, 85, 88, 86),
(12, 12, 78, 80, 79),
(13, 13, 91, 94, 92),
(14, 14, 88, 85, 86),
(15, 15, 95, 96, 95),
(16, 16, 72, 75, 73),
(17, 17, 98, 99, 98),
(18, 18, 87, 90, 88),
(19, 19, 93, 92, 92),
(20, 20, 80, 82, 81),
(21, 21, 99, 98, 98),
(22, 22, 90, 91, 90),
(23, 23, 76, 79, 77),
(24, 24, 97, 96, 96),
(25, 25, 100, 99, 99);

-- GOAL MASTER
INSERT INTO goal_master (goal_master_id, badge_id, goal_type, goal_title, goal_description, target_value, period_type, is_active, created_at, updated_at) VALUES
(1, NULL, 'STUDY_COUNT', '하루 3회 학습하기', '하루 동안 학습을 3회 완료합니다.', 3, 'DAILY', true, NOW(), NOW()),
(2, NULL, 'STUDY_TIME', '하루 30분 학습하기', '하루 총 학습 시간을 30분 이상 달성합니다.', 30, 'DAILY', true, NOW(), NOW()),
(3, NULL, 'SPEAKING_COUNT', '말하기 5회 완료', '영어 말하기 학습을 5회 완료합니다.', 5, 'WEEKLY', true, NOW(), NOW()),
(4, NULL, 'STUDY_COUNT', '카페 학습 10회 완료', '카페 관련 학습을 10회 완료합니다.', 10, 'WEEKLY', true, NOW(), NOW()),
(5, NULL, 'STUDY_TIME', '하루 1시간 학습', '하루 총 학습 시간을 1시간 이상 달성합니다.', 60, 'DAILY', true, NOW(), NOW()),
(6, NULL, 'SPEAKING_COUNT', '말하기 20문장 달성', '영어 말하기 문장을 20개 이상 수행합니다.', 20, 'WEEKLY', true, NOW(), NOW()),
(7, NULL, 'STUDY_COUNT', '공항 시나리오 마스터', '공항 시나리오를 15회 완료합니다.', 15, 'MONTHLY', true, NOW(), NOW()),
(8, NULL, 'STUDY_TIME', '주간 학습왕', '일주일 동안 총 300분 학습합니다.', 300, 'WEEKLY', true, NOW(), NOW()),
(9, NULL, 'STUDY_COUNT', '호텔 시나리오 5회 완료', '호텔 관련 시나리오를 5회 완료합니다.', 5, 'WEEKLY', true, NOW(), NOW()),
(10, NULL, 'SPEAKING_COUNT', '발음 연습 30회', '발음 연습을 30회 진행합니다.', 30, 'MONTHLY', true, NOW(), NOW()),
(11, NULL, 'STUDY_TIME', '주말 집중 학습', '주말 동안 총 120분 학습합니다.', 120, 'WEEKLY', true, NOW(), NOW()),
(12, NULL, 'STUDY_COUNT', '쇼핑 시나리오 완료', '쇼핑 관련 시나리오를 8회 완료합니다.', 8, 'MONTHLY', true, NOW(), NOW()),
(13, NULL, 'SPEAKING_COUNT', 'AI 대화 50문장', 'AI와 영어 대화를 50문장 이상 진행합니다.', 50, 'MONTHLY', true, NOW(), NOW()),
(14, NULL, 'STUDY_TIME', '새벽 학습 챌린지', '오전 시간대 학습을 총 180분 달성합니다.', 180, 'MONTHLY', true, NOW(), NOW()),
(15, NULL, 'STUDY_COUNT', '일주일 연속 학습', '7일 연속 학습을 진행합니다.', 7, 'WEEKLY', true, NOW(), NOW());

-- USER GOAL
INSERT INTO user_goal (user_goal_id, user_id, goal_master_id, current_value, status, start_date, end_date, completed_at, created_at, updated_at) VALUES
(1, 2, 1, 3, 'COMPLETED', CURDATE() - INTERVAL 1 DAY, CURDATE(), NOW() - INTERVAL 2 HOUR, NOW(), NOW()),
(2, 2, 2, 20, 'ACTIVE', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 DAY), NULL, NOW(), NOW()),
(3, 3, 3, 5, 'COMPLETED', CURDATE() - INTERVAL 5 DAY, CURDATE(), NOW() - INTERVAL 1 DAY, NOW(), NOW()),
(4, 4, 4, 7, 'ACTIVE', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY), NULL, NOW(), NOW()),
(5, 5, 5, 60, 'COMPLETED', CURDATE() - INTERVAL 2 DAY, CURDATE(), NOW() - INTERVAL 3 HOUR, NOW(), NOW()),
(6, 6, 6, 12, 'ACTIVE', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY), NULL, NOW(), NOW()),
(7, 7, 7, 15, 'COMPLETED', CURDATE() - INTERVAL 10 DAY, CURDATE(), NOW() - INTERVAL 5 DAY, NOW(), NOW()),
(8, 3, 8, 180, 'ACTIVE', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY), NULL, NOW(), NOW()),
(9, 4, 9, 5, 'COMPLETED', CURDATE() - INTERVAL 4 DAY, CURDATE(), NOW() - INTERVAL 1 DAY, NOW(), NOW()),
(10, 5, 10, 25, 'ACTIVE', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY), NULL, NOW(), NOW());

-- FAVORITE PLACE
INSERT INTO favorite_place (favorite_place_id, user_id, place_id, created_at)
VALUES
(1, 1, 1, NOW()),
(2, 1, 2, NOW());

-- FAVORITE SCENARIO
INSERT INTO favorite_scenario (favorite_scenario_id, user_id, scenario_id, created_at)
VALUES
(1, 1, 1, NOW()),
(2, 1, 2, NOW());

-- FRIENDSHIP
INSERT INTO friendship (friendship_id, requester_id, addressee_id, status, requested_at, responded_at)
VALUES
(11, 1, 7, 'ACCEPTED', NOW() - INTERVAL 10 DAY, NOW() - INTERVAL 9 DAY),
(12, 2, 4, 'ACCEPTED', NOW() - INTERVAL 8 DAY, NOW() - INTERVAL 7 DAY),
(13, 3, 5, 'PENDING', NOW() - INTERVAL 2 DAY, NULL),
(14, 4, 6, 'BLOCKED', NOW() - INTERVAL 5 DAY, NOW() - INTERVAL 4 DAY),
(15, 5, 7, 'REJECTED', NOW() - INTERVAL 6 DAY, NOW() - INTERVAL 5 DAY),
(16, 6, 2, 'PENDING', NOW() - INTERVAL 1 DAY, NULL),
(17, 2, 3, 'ACCEPTED', NOW() - INTERVAL 1 DAY, NOW());

-- USER REPORT
INSERT INTO user_report (report_id, reporter_id, reported_user_id, reason, status, created_at, processed_at, admin_memo)
VALUES
(9, 1, 6, '반복적인 욕설 사용', 'PENDING', NOW(), NULL, NULL),
(10, 2, 6, '광고 메시지 전송', 'RESOLVED', NOW() - INTERVAL 3 DAY, NOW() - INTERVAL 2 DAY, '경고 처리 완료'),
(11, 3, 5, '도배 행위', 'PENDING', NOW() - INTERVAL 1 DAY, NULL, NULL),
(12, 4, 2, '비매너 언행', 'REJECTED', NOW() - INTERVAL 5 DAY, NOW() - INTERVAL 4 DAY, '증거 부족'),
(13, 5, 7, '욕설 포함 메시지', 'RESOLVED', NOW() - INTERVAL 7 DAY, NOW() - INTERVAL 6 DAY, '3일 정지 조치'),
(14, 7, 6, '부적절한 프로필 사진', 'PENDING', NOW() - INTERVAL 2 DAY, NULL, NULL);





SET FOREIGN_KEY_CHECKS = 1;
