
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int n; int stride; } ;
typedef TYPE_1__ fz_bitmap ;



void fz_bitmap_details(fz_bitmap *bit, int *w, int *h, int *n, int *stride)
{
 if (!bit)
 {
  if (w)
   *w = 0;
  if (h)
   *h = 0;
  if (n)
   *n = 0;
  if (stride)
   *stride = 0;
  return;
 }
 if (w)
  *w = bit->w;
 if (h)
  *h = bit->h;
 if (n)
  *n = bit->n;
 if (stride)
  *stride = bit->stride;
}
