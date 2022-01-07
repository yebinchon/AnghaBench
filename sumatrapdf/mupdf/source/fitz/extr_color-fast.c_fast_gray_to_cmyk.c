
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_4__ {unsigned char* samples; size_t w; int h; int n; int s; int alpha; size_t stride; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_div255 (int,int) ;
 int fz_mul255 (int,int) ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static void fast_gray_to_cmyk(fz_context *ctx, fz_pixmap *src, fz_pixmap *dst, int copy_spots)
{
 unsigned char *s = src->samples;
 unsigned char *d = dst->samples;
 size_t w = src->w;
 int h = src->h;
 int sn = src->n;
 int ss = src->s;
 int sa = src->alpha;
 int dn = dst->n;
 int ds = dst->s;
 int da = dst->alpha;
 ptrdiff_t d_line_inc = dst->stride - w * dn;
 ptrdiff_t s_line_inc = src->stride - w * sn;
 int k, g;
 int a = 255;
 int i;

 if (copy_spots && ss != ds)
  fz_throw(ctx, FZ_ERROR_GENERIC, "incompatible number of spots when converting pixmap");

 if ((int)w < 0 || h < 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "integer overflow");

 while (h--)
 {
  size_t ww = w;
  while (ww--)
  {
   g = s[0];

   if (sa)
   {
    a = s[1+ss];
    g = fz_div255(g, a);
   }

   k = 255 - g;

   if (da)
   {
    *d++ = 0;
    *d++ = 0;
    *d++ = 0;
    *d++ = fz_mul255(k, a);
   }
   else
   {
    *d++ = 0;
    *d++ = 0;
    *d++ = 0;
    *d++ = k;
   }

   if (copy_spots)
   {
    s += 1;
    for (i=ss; i > 0; --i)
     *d++ = *s++;
    s += sa;
   }
   else
   {
    s += 1 + ss + sa;
    d += ds;
   }

   if (da)
   {
    *d++ = a;
   }
  }
  d += d_line_inc;
  s += s_line_inc;
 }
}
