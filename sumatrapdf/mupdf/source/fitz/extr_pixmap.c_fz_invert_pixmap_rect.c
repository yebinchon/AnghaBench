
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* samples; int stride; int n; int h; int y; int w; int x; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_6__ {int y1; int y0; int x1; int x0; } ;
typedef TYPE_2__ fz_irect ;
typedef int fz_context ;


 int fz_clampi (int ,int ,int ) ;

void fz_invert_pixmap_rect(fz_context *ctx, fz_pixmap *image, fz_irect rect)
{
 unsigned char *p;
 int x, y, n;

 int x0 = fz_clampi(rect.x0 - image->x, 0, image->w);
 int x1 = fz_clampi(rect.x1 - image->x, 0, image->w);
 int y0 = fz_clampi(rect.y0 - image->y, 0, image->h);
 int y1 = fz_clampi(rect.y1 - image->y, 0, image->h);

 for (y = y0; y < y1; y++)
 {
  p = image->samples + (unsigned int)((y * image->stride) + (x0 * image->n));
  for (x = x0; x < x1; x++)
  {
   for (n = image->n; n > 1; n--, p++)
    *p = 255 - *p;
   p++;
  }
 }
}
