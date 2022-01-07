
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float stb_cubic_bezier_1d(float t, float p0, float p1, float p2, float p3)
{
   float it = 1-t;
   return it*it*it*p0 + 3*it*it*t*p1 + 3*it*t*t*p2 + t*t*t*p3;
}
