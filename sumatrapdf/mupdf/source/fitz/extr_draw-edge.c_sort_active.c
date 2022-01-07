
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; } ;
typedef TYPE_1__ fz_edge ;



__attribute__((used)) static void
sort_active(fz_edge **a, int n)
{
 int h, i, k;
 fz_edge *t;

 h = 1;
 if (n < 14) {
  h = 1;
 }
 else {
  while (h < n)
   h = 3 * h + 1;
  h /= 3;
  h /= 3;
 }

 while (h > 0)
 {
  for (i = 0; i < n; i++) {
   t = a[i];
   k = i - h;
   while (k >= 0 && a[k]->x > t->x) {
    a[k + h] = a[k];
    k -= h;
   }
   a[k + h] = t;
  }

  h /= 3;
 }
}
