##Оптическая информатика
##Лабораторная работа №1
##Выполнил: Лазарев Кирилл
##Группа: 6202-030301D
##Вариант: 16

LEFT_SIDE = -10;
RIGHT_SIDE = 10;
POINTS = 1000;
M = -3;

step = (RIGHT_SIDE - LEFT_SIDE) / POINTS;

#Первая часть задания (Построение графиков)
subplot(6, 6, 1)
xVector = LEFT_SIDE:step:(RIGHT_SIDE - step);
fVector = (xVector + 11) / 5;
plot(xVector, fVector);
grid on;
title("График f(x) = (x + 11)/5");
xlabel("x");
ylabel("f(x)");

subplot(6, 6, 2)
xVector2 = 2 * xVector;
fVector2 = (xVector2 + 11) / 5;
plot(xVector2, fVector2);
grid on;
title("График f(x) = (2x + 11)/5");
xlabel("x");
ylabel("f(x)");

subplot(6, 6, 3)
xVector3 = xVector + 5;
fVector3 = (xVector3 + 11) / 5;
plot(xVector3, fVector3);
grid on;
title("График f(x) = [(x + 5) + 11]/5");
xlabel("x");
ylabel("f(x)");

#Вторая часть задания (Выделение первой четверти из графиков)
subplot(6, 6, 7);
xVector_ = xVector(1:end/4);
fVector_ = fVector(1:end/4);
plot(xVector_, fVector_);
grid on;
title("Первая четверть");
xlabel("x");
ylabel("f(x)");

subplot(6, 6, 8)
xVector2_ = xVector2(1:end/4);
fVector2_ = fVector2(1:end/4);
plot(xVector2_, fVector2_);
grid on;
title("Первая четверть");
xlabel("x");
ylabel("f(x)");

subplot(6, 6, 9);
xVector3_ = xVector3(1:end/4);
fVector3_ = fVector3(1:end/4);
plot(xVector3_, fVector3_);
grid on;
title("Первая четверть");
xlabel("x");
ylabel("f(x)");

#Третья часть задания (Выделение середины из графиков)
thirdPart = POINTS - (POINTS / 2)

subplot(6, 6, 13);
xVector__ = xVector;
xVector__(1:end/4) = [];
xVector__(thirdPart:end) = [];
fVector__ = fVector;
fVector__(1:end/4) = [];
fVector__(thirdPart:end) = [];
plot(xVector__, fVector__);
grid on;
title("Середина");
xlabel("x");
ylabel("f(x)");

subplot(6, 6, 14)
xVector2__ = xVector2;
xVector2__(1:end/4) = [];
xVector2__(thirdPart:end) = [];
fVector2__ = fVector2;
fVector2__(1:end/4) = [];
fVector2__(thirdPart:end) = [];
plot(xVector2__, fVector2__);
grid on;
title("Середина");
xlabel("x");
ylabel("f(x)");

subplot(6, 6, 15);
xVector3__ = xVector3;
xVector3__(1:end/4) = [];
xVector3__(thirdPart:end) = [];
fVector3__ = fVector3;
fVector3__(1:end/4) = [];
fVector3__(thirdPart:end) = [];
plot(xVector3__, fVector3__);
grid on;
title("Середина");
xlabel("x");
ylabel("f(x)");

#Четвертая часть задания (Построение графиков от 0 до 7)
domain = xVector > 0.0 & xVector < 7.0;

subplot(6, 6, 20);
plot(xVector(domain), fVector(domain));
grid on;
title("От 0 до 7");
xlabel("x");
ylabel("f(x)");

#Пятая часть задания (Множественное построение графиков))
powerG = xVector * pi();
powerG = powerG / 180;
powerG = sin(powerG);
gVector = 2 .^ powerG - 1;

summFG = fVector + gVector;
timesFG = fVector .* gVector;

hold on;
subplot(6, 6, [25:30, 31:36]);
plot(xVector, fVector, "-r;f(x) = (x + 11)/5;",
      xVector, gVector, "-.g;g(x) = 2^{sin{(x)}} - 1;",
      xVector(1:30:end), summFG(1:30:end), "+b;F(x) = g(x)+f(x);",
      xVector(1:30:end), timesFG(1:30:end), "-*k;G(x) = g(x)*f(x);");
grid on;
title("Множественное построение графиков");
xlabel("x");
ylabel("f(x)");

#Шестая часть задания (Действительная, мнимая части, амплитуда и фаза функции f(x))
subplot(6, 6, 4);
reFVector = real(fVector);
plot(xVector, reFVector);
grid on;
title("Действительная часть функции f(x)");
xlabel("x");
ylabel("Re(f(x))");

subplot(6, 6, 5);
imFVector = imag(fVector);
plot(xVector, imFVector);
grid on;
title("Мнимая часть функции f(x)");
xlabel("x");
ylabel("Im(f(x))");

subplot(6, 6, 6);
absFVector = abs(fVector);
plot(xVector, absFVector);
grid on;
title("Фаза функции f(x)");
xlabel("x");
ylabel("|(f(x))|");

subplot(6, 6, 11);
argFVector = arg(fVector);
plot(xVector, argFVector);
grid on;
title("Аргумент функции f(x)");
xlabel("x");
ylabel("arg(f(x))");

#Шестая часть задания (Действительная, мнимая части, амплитуда и фаза функции h(x))
hVector = fVector .* exp(1i * xVector);

subplot(6, 6, 16);
reHVector = real(hVector);
plot(xVector, reHVector);
grid on;
title("Действительная часть функции h(x)");
xlabel("x");
ylabel("Re(h(x))");

subplot(6, 6, 17);
imHVector = imag(hVector);
plot(xVector, imHVector);
grid on;
title("Мнимая часть функции h(x)");
xlabel("x");
ylabel("Im(h(x))");

subplot(6, 6, 18);
absHVector = abs(hVector);
plot(xVector, absHVector);
grid on;
title("Фаза функции h(x)");
xlabel("x");
ylabel("|(h(x))|");

subplot(6, 6, 23);
argHVector = arg(hVector);
plot(xVector, argHVector);
grid on;
title("Аргумент функции h(x)");
xlabel("x");
ylabel("arg(h(x))");

#Седьмая часть задания (Построение матрицы F)
FLines = gVector;
FColumns = transpose(fVector);
FMatrix = FColumns * FLines;

matrixesImage = figure(2);

subplot(1, 3, 1);
imagesc(FMatrix);
colormap gray;
colorbar;
title("Изображение матрицы F");

#Восьмая часть задания (Построение середины матрицы F)
halfXMatrixVector = xVector;
halfXMatrixVector(1:end/4) = [];
halfXMatrixVector(thirdPart:end) = [];

halfFMatrixVector = fVector;
halfFMatrixVector(1:end/4) = [];
halfFMatrixVector(thirdPart:end) = [];

halfGMatrixVector = gVector;
halfGMatrixVector(1:end/4) = [];
halfGMatrixVector(thirdPart:end) = [];

halfFLines = halfGMatrixVector;
halfFColumns = transpose(halfFMatrixVector);
halfFMatrix = halfFColumns * halfFLines;

subplot(1, 3, 2);
imagesc(halfFMatrix);
colormap gray;
colorbar;
title("Изображение середины матрицы F");

#Девятая часть задания (Построение матрицы G)
yVector = xVector;

[XMatrix, YMatrix] = meshgrid(xVector, yVector);

GMatrix = fVector * YMatrix + gVector * XMatrix;
subplot(1, 3, 3);
imagesc(GMatrix);
colormap gray;
colorbar;
title("Изображение матрицы G");

#Десятая часть задания (Построение матриц R и Phi)
RMatrix = sqrt(XMatrix .^ 2 + YMatrix .^2);
PhiMatrix = atan2(YMatrix, XMatrix);

#Одиннадцатая часть задания (Множественное построение матрицы H)
HMatrix = RMatrix .* exp(1i * M * PhiMatrix);
matrixHImages = figure(3);

subplot(2, 4, 1);
reHMatrix = real(HMatrix);
imagesc(reHMatrix);
colormap gray;
colorbar;
title("Изображение действительной части матрицы H");

subplot(2, 4, 2);
imHMatrix = imag(HMatrix);
imagesc(imHMatrix);
colormap gray;
colorbar;
title("Изображение мнимой части матрицы H");

subplot(2, 4, 3);
absHMatrix = abs(HMatrix);
imagesc(absHMatrix);
colormap gray;
colorbar;
title("Изображение фазы матрицы H");

subplot(2, 4, 4);
argHMatrix = arg(HMatrix);
imagesc(argHMatrix);
colormap gray;
colorbar;
title("Изображение аргумента матрицы H");

#Двенадцатая часть задания (Множественное построение середины матрицы H)
halfXVector = xVector;
halfXVector(1:end/4) = [];
halfXVector(thirdPart:end) = [];
halfYVector = xVector;
[halfXMatrix, halfYMatrix] = meshgrid(halfXVector, halfYVector);
halfRMatrix = sqrt(halfXMatrix .^ 2 + halfYMatrix .^2);
halfPhiMatrix = atan2(halfYMatrix, halfXMatrix);
halfHMatrix = halfRMatrix .* exp(1i * M * halfPhiMatrix);

subplot(2, 4, 5);
halfReHMatrix = real(halfHMatrix);
imagesc(halfReHMatrix);
colormap gray;
colorbar;
title("Изображение действительной части середины матрицы H");

subplot(2, 4, 6);
halfImHMatrix = imag(halfHMatrix);
imagesc(halfImHMatrix);
colormap gray;
colorbar;
title("Изображение мнимой части середины матрицы H");

subplot(2, 4, 7);
halfAbsHMatrix = abs(halfHMatrix);
imagesc(halfAbsHMatrix);
colormap gray;
colorbar;
title("Изображение фазы середины матрицы H");

subplot(2, 4, 8);
halfArgHMatrix = arg(halfHMatrix);
imagesc(halfArgHMatrix);
colormap gray;
colorbar;
title("Изображение аргумента середины матрицы H");
