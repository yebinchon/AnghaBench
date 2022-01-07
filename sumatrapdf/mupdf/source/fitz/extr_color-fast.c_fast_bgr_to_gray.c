
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
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static void fast_bgr_to_gray(fz_context *ctx, fz_pixmap *src, fz_pixmap *dst, int copy_spots)
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


 if (copy_spots && ss != ds)
  fz_throw(ctx, FZ_ERROR_GENERIC, "incompatible number of spots when converting pixmap");
 if (!da && sa)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot drop alpha when converting pixmap");

 if ((int)w < 0 || h < 0)
  return;

 if (d_line_inc == 0 && s_line_inc == 0)
 {
  w *= h;
  h = 1;
 }

 if (ss == 0 && ds == 0)
 {

  if (da)
  {
   if (sa)
   {
    while (h--)
    {
     size_t ww = w;
     while (ww--)
     {
      d[0] = ((s[0]+1) * 28 + (s[1]+1) * 150 + (s[2]+1) * 77) >> 8;
      d[1] = s[3];
      s += 4;
      d += 2;
     }
     d += d_line_inc;
     s += s_line_inc;
    }
   }
   else
   {
    while (h--)
    {
     size_t ww = w;
     while (ww--)
     {
      d[0] = ((s[0]+1) * 28 + (s[1]+1) * 150 + (s[2]+1) * 77) >> 8;
      d[1] = 255;
      s += 3;
      d += 2;
     }
     d += d_line_inc;
     s += s_line_inc;
    }
   }
  }
  else
  {
   int si = 3 + src->alpha;

   while (h--)
   {
    size_t ww = w;
    while (ww--)
    {
     d[0] = ((s[0]+1) * 28 + (s[1]+1) * 150 + (s[2]+1) * 77) >> 8;
     s += si;
     d++;
    }
    d += d_line_inc;
    s += s_line_inc;
   }
  }
 }
 else if (copy_spots)
 {

  while (h--)
  {
   int i;
   size_t ww = w;
   while (ww--)
   {
    d[0] = ((s[0]+1) * 28 + (s[1]+1) * 150 + (s[2]+1) * 77) >> 8;
    s += 3;
    d++;
    for (i=ss; i > 0; i--)
     *d++ = *s++;
    if (da)
     *d++ = sa ? *s++ : 255;
   }
   d += d_line_inc;
   s += s_line_inc;
  }
 }
 else
 {

  while (h--)
  {
   size_t ww = w;
   while (ww--)
   {
    d[0] = ((s[0]+1) * 28 + (s[1]+1) * 150 + (s[2]+1) * 77) >> 8;
    s += sn;
    d += dn;
    if (da)
     d[-1] = sa ? s[-1] : 255;
   }
   d += d_line_inc;
   s += s_line_inc;
  }
 }
}
