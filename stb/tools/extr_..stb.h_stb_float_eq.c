
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 float fabs (float) ;

int stb_float_eq(float x, float y, float delta, int max_ulps)
{
   if (fabs(x-y) <= delta) return 1;
   if (abs(*(int *)&x - *(int *)&y) <= max_ulps) return 1;
   return 0;
}
