
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int white ;
struct TYPE_3__ {unsigned char* samples; int n; int h; int w; int stride; int colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;
typedef int black ;





 int FZ_ERROR_GENERIC ;
 int fz_colorspace_type (int *,int ) ;
 int fz_mul255 (unsigned char,int) ;
 int fz_throw (int *,int ,char*) ;

void
fz_tint_pixmap(fz_context *ctx, fz_pixmap *pix, int black, int white)
{
 unsigned char *s = pix->samples;
 int n = pix->n;
 int x, y, save;
 int rb = (black>>16)&255;
 int gb = (black>>8)&255;
 int bb = (black)&255;
 int rw = (white>>16)&255;
 int gw = (white>>8)&255;
 int bw = (white)&255;
 int rm = (rw - rb);
 int gm = (gw - gb);
 int bm = (bw - bb);

 switch (fz_colorspace_type(ctx, pix->colorspace))
 {
 case 129:
  gw = (rw + gw + bw) / 3;
  gb = (rb + gb + bb) / 3;
  gm = gw - gb;
  for (y = 0; y < pix->h; y++)
  {
   for (x = 0; x < pix->w; x++)
   {
    *s = gb + fz_mul255(*s, gm);
    s += n;
   }
   s += pix->stride - pix->w * n;
  }
  break;

 case 130:
  save = rm; rm = bm; bm = save;
  save = rb; rb = bb; bb = save;

 case 128:
  for (y = 0; y < pix->h; y++)
  {
   for (x = 0; x < pix->w; x++)
   {
    s[0] = rb + fz_mul255(s[0], rm);
    s[1] = gb + fz_mul255(s[1], gm);
    s[2] = bb + fz_mul255(s[2], bm);
    s += n;
   }
   s += pix->stride - pix->w * n;
  }
  break;

 default:
  fz_throw(ctx, FZ_ERROR_GENERIC, "can only tint RGB, BGR and Gray pixmaps");
  break;
 }
}
