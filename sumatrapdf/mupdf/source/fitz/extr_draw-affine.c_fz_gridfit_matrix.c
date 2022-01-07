
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float b; float c; float e; float a; float f; float d; } ;
typedef TYPE_1__ fz_matrix ;


 scalar_t__ FLT_EPSILON ;
 float MY_EPSILON ;
 scalar_t__ fabsf (float) ;

fz_matrix
fz_gridfit_matrix(int as_tiled, fz_matrix m)
{
 if (fabsf(m.b) < FLT_EPSILON && fabsf(m.c) < FLT_EPSILON)
 {
  if (as_tiled)
  {
   float f;

   f = (float)(int)(m.e + 0.5f);
   m.a += m.e - f;
   m.e = f;

   m.a = (float)(int)(m.a + 0.5f);
  }
  else if (m.a > 0)
  {
   float f;

   f = (float)(int)(m.e);
   if (f - m.e > MY_EPSILON)
    f -= 1.0f;
   m.a += m.e - f;
   m.e = f;

   f = (float)(int)(m.a);
   if (m.a - f > MY_EPSILON)
    f += 1.0f;
   m.a = f;
  }
  else if (m.a < 0)
  {
   float f;

   f = (float)(int)(m.e);
   if (m.e - f > MY_EPSILON)
    f += 1.0f;
   m.a += m.e - f;
   m.e = f;

   f = (float)(int)(m.a);
   if (f - m.a > MY_EPSILON)
    f -= 1.0f;
   m.a = f;
  }
  if (as_tiled)
  {
   float f;

   f = (float)(int)(m.f + 0.5f);
   m.d += m.f - f;
   m.f = f;

   m.d = (float)(int)(m.d + 0.5f);
  }
  else if (m.d > 0)
  {
   float f;

   f = (float)(int)(m.f);
   if (f - m.f > MY_EPSILON)
    f -= 1.0f;
   m.d += m.f - f;
   m.f = f;

   f = (float)(int)(m.d);
   if (m.d - f > MY_EPSILON)
    f += 1.0f;
   m.d = f;
  }
  else if (m.d < 0)
  {
   float f;

   f = (float)(int)(m.f);
   if (m.f - f > MY_EPSILON)
    f += 1.0f;
   m.d += m.f - f;
   m.f = f;

   f = (float)(int)(m.d);
   if (f - m.d > MY_EPSILON)
    f -= 1.0f;
   m.d = f;
  }
 }
 else if (fabsf(m.a) < FLT_EPSILON && fabsf(m.d) < FLT_EPSILON)
 {
  if (as_tiled)
  {
   float f;

   f = (float)(int)(m.e + 0.5f);
   m.b += m.e - f;
   m.e = f;

   m.b = (float)(int)(m.b + 0.5f);
  }
  else if (m.b > 0)
  {
   float f;

   f = (float)(int)(m.f);
   if (f - m.f > MY_EPSILON)
    f -= 1.0f;
   m.b += m.f - f;
   m.f = f;

   f = (float)(int)(m.b);
   if (m.b - f > MY_EPSILON)
    f += 1.0f;
   m.b = f;
  }
  else if (m.b < 0)
  {
   float f;

   f = (float)(int)(m.f);
   if (m.f - f > MY_EPSILON)
    f += 1.0f;
   m.b += m.f - f;
   m.f = f;

   f = (float)(int)(m.b);
   if (f - m.b > MY_EPSILON)
    f -= 1.0f;
   m.b = f;
  }
  if (as_tiled)
  {
   float f;

   f = (float)(int)(m.f + 0.5f);
   m.c += m.f - f;
   m.f = f;

   m.c = (float)(int)(m.c + 0.5f);
  }
  else if (m.c > 0)
  {
   float f;

   f = (float)(int)(m.e);
   if (f - m.e > MY_EPSILON)
    f -= 1.0f;
   m.c += m.e - f;
   m.e = f;

   f = (float)(int)(m.c);
   if (m.c - f > MY_EPSILON)
    f += 1.0f;
   m.c = f;
  }
  else if (m.c < 0)
  {
   float f;

   f = (float)(int)(m.e);
   if (m.e - f > MY_EPSILON)
    f += 1.0f;
   m.c += m.e - f;
   m.e = f;

   f = (float)(int)(m.c);
   if (f - m.c > MY_EPSILON)
    f -= 1.0f;
   m.c = f;
  }
 }
 return m;
}
