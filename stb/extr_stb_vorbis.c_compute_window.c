
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_PI ;
 scalar_t__ sin (double) ;
 double square (float) ;

__attribute__((used)) static void compute_window(int n, float *window)
{
   int n2 = n >> 1, i;
   for (i=0; i < n2; ++i)
      window[i] = (float) sin(0.5 * M_PI * square((float) sin((i - 0 + 0.5) / n2 * 0.5 * M_PI)));
}
