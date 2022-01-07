
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct info {int width; int height; int maxval; int bitdepth; int cs; } ;
struct TYPE_4__ {unsigned char* samples; int w; int h; int n; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int UINT_MAX ;
 int bitdepth_from_maxval (int) ;
 int fz_clampi (int,int ,int) ;
 int fz_colorspace_n (int *,int ) ;
 TYPE_1__* fz_new_pixmap (int *,int ,int,int,int *,int ) ;
 int fz_throw (int *,int ,char*,...) ;
 int map_color (int *,int,int,int) ;
 unsigned char* pnm_read_number (int *,unsigned char const*,unsigned char const*,int*) ;
 unsigned char* pnm_read_white (int *,unsigned char const*,unsigned char const*,int) ;

__attribute__((used)) static fz_pixmap *
pnm_ascii_read_image(fz_context *ctx, struct info *pnm, const unsigned char *p, const unsigned char *e, int onlymeta, int bitmap, const unsigned char **out)
{
 fz_pixmap *img = ((void*)0);

 p = pnm_read_number(ctx, p, e, &pnm->width);
 p = pnm_read_white(ctx, p, e, 0);

 if (bitmap)
 {
  p = pnm_read_number(ctx, p, e, &pnm->height);
  p = pnm_read_white(ctx, p, e, 1);
  pnm->maxval = 1;
 }
 else
 {
  p = pnm_read_number(ctx, p, e, &pnm->height);
  p = pnm_read_white(ctx, p, e, 0);
  p = pnm_read_number(ctx, p, e, &pnm->maxval);
  p = pnm_read_white(ctx, p, e, 0);
 }

 if (pnm->maxval <= 0 || pnm->maxval >= 65536)
  fz_throw(ctx, FZ_ERROR_GENERIC, "maximum sample value of out range in pnm image: %d", pnm->maxval);

 pnm->bitdepth = bitdepth_from_maxval(pnm->maxval);

 if (pnm->height <= 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "image height must be > 0");
 if (pnm->width <= 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "image width must be > 0");
 if ((unsigned int)pnm->height > UINT_MAX / pnm->width / fz_colorspace_n(ctx, pnm->cs) / (pnm->bitdepth / 8 + 1))
  fz_throw(ctx, FZ_ERROR_GENERIC, "image too large");

 if (onlymeta)
 {
  int x, y, k;
  int w, h, n;

  w = pnm->width;
  h = pnm->height;
  n = fz_colorspace_n(ctx, pnm->cs);

  if (bitmap)
  {
   for (y = 0; y < h; y++)
    for (x = -1; x < w; x++)
    {
     p = pnm_read_number(ctx, p, e, ((void*)0));
     p = pnm_read_white(ctx, p, e, 0);
    }
  }
  else
  {
   for (y = 0; y < h; y++)
    for (x = 0; x < w; x++)
     for (k = 0; k < n; k++)
     {
      p = pnm_read_number(ctx, p, e, ((void*)0));
      p = pnm_read_white(ctx, p, e, 0);
     }
  }
 }
 else
 {
  unsigned char *dp;
  int x, y, k;
  int w, h, n;

  img = fz_new_pixmap(ctx, pnm->cs, pnm->width, pnm->height, ((void*)0), 0);
  dp = img->samples;

  w = img->w;
  h = img->h;
  n = img->n;

  if (bitmap)
  {
   for (y = 0; y < h; y++)
   {
    for (x = 0; x < w; x++)
    {
     int v = 0;
     p = pnm_read_number(ctx, p, e, &v);
     p = pnm_read_white(ctx, p, e, 0);
     *dp++ = v ? 0x00 : 0xff;
    }
   }
  }
  else
  {
   for (y = 0; y < h; y++)
    for (x = 0; x < w; x++)
     for (k = 0; k < n; k++)
     {
      int v = 0;
      p = pnm_read_number(ctx, p, e, &v);
      p = pnm_read_white(ctx, p, e, 0);
      v = fz_clampi(v, 0, pnm->maxval);
      *dp++ = map_color(ctx, v, pnm->maxval, 255);
     }
  }
 }

 if (out)
  *out = p;

 return img;
}
