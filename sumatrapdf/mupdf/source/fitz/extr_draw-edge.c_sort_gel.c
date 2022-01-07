
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; TYPE_2__* edges; } ;
typedef TYPE_1__ fz_gel ;
struct TYPE_6__ {scalar_t__ y; } ;
typedef TYPE_2__ fz_edge ;
typedef int fz_context ;


 int cmpedge ;
 int qsort (TYPE_2__*,int,int,int ) ;

__attribute__((used)) static void
sort_gel(fz_context *ctx, fz_gel *gel)
{
 fz_edge *a = gel->edges;
 int n = gel->len;
 int h, i, k;
 fz_edge t;


 if (n > 10000)
 {
  qsort(a, n, sizeof *a, cmpedge);
  return;
 }


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

   while (k >= 0 && a[k].y > t.y) {
    a[k + h] = a[k];
    k -= h;
   }
   a[k + h] = t;
  }
  h /= 3;
 }
}
