
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* samples; int n; int h; int w; int stride; TYPE_1__* colorspace; } ;
typedef TYPE_2__ fz_pixmap ;
typedef int fz_context ;
struct TYPE_5__ {int type; } ;


 int FZ_COLORSPACE_BGR ;
 int FZ_COLORSPACE_GRAY ;
 int FZ_COLORSPACE_NONE ;
 int FZ_COLORSPACE_RGB ;
 int FZ_ERROR_GENERIC ;
 int fz_invert_pixmap (int *,TYPE_2__*) ;
 int fz_throw (int *,int ,char*) ;
 int invert_luminance (int,unsigned char*) ;

void
fz_invert_pixmap_luminance(fz_context *ctx, fz_pixmap *pix)
{
 unsigned char *s = pix->samples;
 int x, y, n = pix->n;
 int type = pix->colorspace ? pix->colorspace->type : FZ_COLORSPACE_NONE;

 if (type == FZ_COLORSPACE_GRAY)
 {
  fz_invert_pixmap(ctx, pix);
 }
 else if (type == FZ_COLORSPACE_RGB || type == FZ_COLORSPACE_BGR)
 {
  for (y = 0; y < pix->h; y++)
  {
   for (x = 0; x < pix->w; x++)
   {
    invert_luminance(type, s);
    s += n;
   }
   s += pix->stride - pix->w * n;
  }
 }
 else
 {
  fz_throw(ctx, FZ_ERROR_GENERIC, "can only invert luminance of Gray and RGB pixmaps");
 }
}
