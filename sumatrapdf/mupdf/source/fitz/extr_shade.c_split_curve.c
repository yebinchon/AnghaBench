
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;



__attribute__((used)) static void
split_curve(fz_point *pole, fz_point *q0, fz_point *q1, int polestep)
{
 float x12 = (pole[1 * polestep].x + pole[2 * polestep].x) * 0.5f;
 float y12 = (pole[1 * polestep].y + pole[2 * polestep].y) * 0.5f;

 q0[1 * polestep].x = (pole[0 * polestep].x + pole[1 * polestep].x) * 0.5f;
 q0[1 * polestep].y = (pole[0 * polestep].y + pole[1 * polestep].y) * 0.5f;
 q1[2 * polestep].x = (pole[2 * polestep].x + pole[3 * polestep].x) * 0.5f;
 q1[2 * polestep].y = (pole[2 * polestep].y + pole[3 * polestep].y) * 0.5f;

 q0[2 * polestep].x = (q0[1 * polestep].x + x12) * 0.5f;
 q0[2 * polestep].y = (q0[1 * polestep].y + y12) * 0.5f;
 q1[1 * polestep].x = (x12 + q1[2 * polestep].x) * 0.5f;
 q1[1 * polestep].y = (y12 + q1[2 * polestep].y) * 0.5f;

 q0[3 * polestep].x = (q0[2 * polestep].x + q1[1 * polestep].x) * 0.5f;
 q0[3 * polestep].y = (q0[2 * polestep].y + q1[1 * polestep].y) * 0.5f;
 q1[0 * polestep].x = (q0[2 * polestep].x + q1[1 * polestep].x) * 0.5f;
 q1[0 * polestep].y = (q0[2 * polestep].y + q1[1 * polestep].y) * 0.5f;

 q0[0 * polestep].x = pole[0 * polestep].x;
 q0[0 * polestep].y = pole[0 * polestep].y;
 q1[3 * polestep].x = pole[3 * polestep].x;
 q1[3 * polestep].y = pole[3 * polestep].y;
}
