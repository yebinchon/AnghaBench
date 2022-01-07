
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alpha; int s; int w; int h; unsigned char* samples; int stride; int colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int FZ_MAX_COLORS ;
 int fz_colorspace_n (int *,int ) ;
 int fz_convert_color (int *,int *,float*,int ,float*,int *,int ) ;

void
fz_fill_pixmap_with_color(fz_context *ctx, fz_pixmap *pix, fz_colorspace *colorspace, float *color, fz_color_params color_params)
{
 float colorfv[FZ_MAX_COLORS];
 unsigned char colorbv[FZ_MAX_COLORS];
 int i, n, a, s, x, y, w, h;

 n = fz_colorspace_n(ctx, pix->colorspace);
 a = pix->alpha;
 s = pix->s;
 fz_convert_color(ctx, colorspace, color, pix->colorspace, colorfv, ((void*)0), color_params);
 for (i = 0; i < n; ++i)
  colorbv[i] = colorfv[i] * 255;

 w = pix->w;
 h = pix->h;
 for (y = 0; y < h; ++y)
 {
  unsigned char *p = pix->samples + y * pix->stride;
  for (x = 0; x < w; ++x)
  {
   for (i = 0; i < n; ++i)
    *p++ = colorbv[i];
   for (i = 0; i < s; ++i)
    *p++ = 0;
   if (a)
    *p++ = 255;
  }
 }
}
