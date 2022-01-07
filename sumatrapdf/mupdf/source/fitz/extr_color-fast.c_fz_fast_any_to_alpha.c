
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_5__ {unsigned char* samples; size_t w; int h; int n; size_t stride; int alpha; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int fz_clear_pixmap_with_value (int *,TYPE_1__*,int) ;

void
fz_fast_any_to_alpha(fz_context *ctx, fz_pixmap *src, fz_pixmap *dst, int copy_spots)
{
 if (!src->alpha)
  fz_clear_pixmap_with_value(ctx, dst, 255);
 else
 {
  unsigned char *s = src->samples;
  unsigned char *d = dst->samples;
  size_t w = src->w;
  int h = src->h;
  int n = src->n;
  ptrdiff_t d_line_inc = dst->stride - w * dst->n;
  ptrdiff_t s_line_inc = src->stride - w * src->n;

  if ((int)w < 0 || h < 0)
   return;

  if (d_line_inc == 0 && s_line_inc == 0)
  {
   w *= h;
   h = 1;
  }

  s += n-1;
  while (h--)
  {
   size_t ww = w;
   while (ww--)
   {
    *d++ = *s;
    s += n;
   }
   d += d_line_inc;
   s += s_line_inc;
  }
 }
}
