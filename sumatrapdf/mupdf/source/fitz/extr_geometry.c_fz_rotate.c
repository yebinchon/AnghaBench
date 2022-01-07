
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float a; float b; float c; float d; scalar_t__ f; scalar_t__ e; } ;
typedef TYPE_1__ fz_matrix ;


 scalar_t__ FLT_EPSILON ;
 float FZ_PI ;
 float cosf (float) ;
 scalar_t__ fabsf (float) ;
 float sinf (float) ;

fz_matrix
fz_rotate(float theta)
{
 fz_matrix m;
 float s;
 float c;

 while (theta < 0)
  theta += 360;
 while (theta >= 360)
  theta -= 360;

 if (fabsf(0 - theta) < FLT_EPSILON)
 {
  s = 0;
  c = 1;
 }
 else if (fabsf(90.0f - theta) < FLT_EPSILON)
 {
  s = 1;
  c = 0;
 }
 else if (fabsf(180.0f - theta) < FLT_EPSILON)
 {
  s = 0;
  c = -1;
 }
 else if (fabsf(270.0f - theta) < FLT_EPSILON)
 {
  s = -1;
  c = 0;
 }
 else
 {
  s = sinf(theta * FZ_PI / 180);
  c = cosf(theta * FZ_PI / 180);
 }

 m.a = c; m.b = s;
 m.c = -s; m.d = c;
 m.e = 0; m.f = 0;
 return m;
}
