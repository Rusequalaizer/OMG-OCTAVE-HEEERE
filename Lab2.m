##Оптическая информатика
##Лабораторная работа №2
##Выполнил: Лазарев Кирилл
##Группа: 6202-030301D
##Вариант: 16

##Первая часть задания (Построить амплитуду и фазу функции, вычислить интеграл от данной фукции)
LEFT_SIDE = -5;
RIGHT_SIDE = 5;
POINTS = 1001;

step = (RIGHT_SIDE - LEFT_SIDE) / POINTS;

xVector = LEFT_SIDE:step:(RIGHT_SIDE - step);
fVector = exp(-(abs(xVector)) / 2);

plot(xVector, abs(fVector), "-k;abs(f(x));",
      xVector, arg(fVector), "--k;arg(f(x));");
grid on;
title("Амплитуда и фаза f(x) = exp(-|x|/2)");
xlabel("x");
ylabel("abs(f(x)), arg(f(x))");

integRes = sum(fVector * step);

##Вторая часть задания
LEFT_SIDE_FUR = -5;
RIGHT_SIDE_FUR = 5;
POINTS_FUR = 501;
L = 1:1:POINTS_FUR;



