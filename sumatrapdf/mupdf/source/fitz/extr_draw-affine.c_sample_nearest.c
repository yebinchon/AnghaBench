
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int PREC ;

__attribute__((used)) static inline const byte *sample_nearest(const byte *s, int w, int h, int str, int n, int u, int v)
{
 if (u < 0) u = 0;
 if (v < 0) v = 0;
 if (u >= (w>>PREC)) u = (w>>PREC) - 1;
 if (v >= (h>>PREC)) v = (h>>PREC) - 1;
 return s + v * str + u * n;
}
