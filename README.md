# BalloonBot
### 활용법

1. ImageJ 설치 (https://imagej.nih.gov/ij/download.html)

2. ImageJ Measurement 값 설정 (Centroid 값을 포함시켜야 각각의 Region of Interest의 중앙의 좌표를 알 수 있습니다.)

3. Region of Interest 매크로 코드에서 경로 변경

4. Run Macro - Gray Scale로 변환하고, ROIs를 나누고, Results 값을 도출하는 것까지 전부 포함하였습니다. ImageJ에서 제공하는 함수가 있으니 코드 편집 시 참고해주세요.

5. 엑셀 .csv 파일 형식으로 데이터 받았을 것.

6. 엑셀 함수 사용해서 class를 k개로 분류 (본인은 흰색, 검정색, 회색 3개로 함) 

7. 엑셀 함수 사용해서 1열에 있는 데이터 값을 m*n으로 나눔. 

8. class 별로 색상을 분류해서 그림 복원되는 것까지 확인. 
------------------------------------------------------------------------------------------------------
### 세부사항

1.	이미지 하나를 선택 

2.	ImageJ 프로그램을 실행

3.	Open – 이미지 불러오기

4.	Image type을 보면 RGB color라고 표시가 되어 있을텐데 8bit로 바꿔주면 gray scale로 변환 

5.	Plugins-Macros-Edit 에서 매크로 코드를 열어줌 

6.	open("C:/Users/kist/Desktop/test.jpg");에서 이미지 경로를 바꿔주고 나누고자 하는 행렬대로 x, y를 바꿔줌.

7.	그리고 매크로 실행

8.	결과 값이 csv 파일 형식으로 1열에 해당 면적의 평균 intensity 데이터값을 추출할 수 있음. (0~255) – X, Y 좌표값은 centroid measurement 활성화하면 됨 .

9.	색상 및 클래스를 지정한 특정 표를 만들어서 (예를 들면 H열에 1, 2, 3, n, …을 각각 기입하고 I열에는 0~255를 n 등분한 값들을 n개 기입. Choose 함수를 활용하여 표에서 데이터 값을 3가지 클래스로 나눔)

10.	Offset 함수를 활용하여 일렬의 데이터값을 m*n 직사각행렬로 배치.

11.	 2d 이미지를 원래대로 복구한 것을 확인

12.	ImageJ에 대한 기능은 유튜브 및 구글링을 통해 공부한 것이고 ImageJ 같은 경우 jim이라는 프로그램 전용 파일 형식이 있음. 여기에는 ImageJ만이 활용하는 특정 함수가 있으니 매크로 코드 작성할 때 확인할 것. 

13.	3D 입체는 surface plot으로 만들 수 있음.
