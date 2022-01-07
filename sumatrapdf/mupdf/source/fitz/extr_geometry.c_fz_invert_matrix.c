
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float a; float d; float b; float c; float e; float f; } ;
typedef TYPE_1__ fz_matrix ;


 float FLT_EPSILON ;

fz_matrix
fz_invert_matrix(fz_matrix src)
{
 float a = src.a;
 float det = a * src.d - src.b * src.c;
 if (det < -FLT_EPSILON || det > FLT_EPSILON)
 {
  fz_matrix dst;
  float rdet = 1 / det;
  dst.a = src.d * rdet;
  dst.b = -src.b * rdet;
  dst.c = -src.c * rdet;
  dst.d = a * rdet;
  a = -src.e * dst.a - src.f * dst.c;
  dst.f = -src.e * dst.b - src.f * dst.d;
  dst.e = a;
  return dst;
 }
 return src;
}
