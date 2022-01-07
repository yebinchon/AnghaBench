
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int n; int h; unsigned char* samples; int stride; int s; int colorspace; scalar_t__ alpha; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 scalar_t__ fz_colorspace_is_subtractive (int *,int ) ;
 int memset (unsigned char*,int,unsigned int) ;

void
fz_clear_pixmap(fz_context *ctx, fz_pixmap *pix)
{
 int stride = pix->w * pix->n;
 int h = pix->h;
 unsigned char *s = pix->samples;
 if (stride == pix->stride)
 {
  stride *= h;
  h = 1;
 }
 if (pix->alpha || fz_colorspace_is_subtractive(ctx, pix->colorspace))
 {
  while (h--)
  {
   memset(s, 0, (unsigned int)stride);
   s += pix->stride;
  }
 }
 else if (pix->s == 0)
 {
  while (h--)
  {
   memset(s, 0xff, (unsigned int)stride);
   s += pix->stride;
  }
 }
 else
 {

  int w = stride/pix->n;
  int spots = pix->s;
  int colorants = pix->n - spots;
  while (h--)
  {
   int w2 = w;
   while (w2--)
   {
    int i = colorants;
    do
    {
     *s++ = 0xff;
     i--;
    }
    while (i != 0);

    i = spots;
    do
    {
     *s++ = 0;
     i--;
    }
    while (i != 0);
   }
  }
 }
}
