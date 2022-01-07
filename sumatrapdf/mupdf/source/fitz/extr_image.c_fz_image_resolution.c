
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xres; int yres; } ;
typedef TYPE_1__ fz_image ;


 int INSANE_DPI ;
 int SANE_DPI ;

void
fz_image_resolution(fz_image *image, int *xres, int *yres)
{
 *xres = image->xres;
 *yres = image->yres;
 if (*xres < 0 || *yres < 0 || (*xres == 0 && *yres == 0))
 {

  *xres = SANE_DPI; *yres = SANE_DPI;
 }
 else if (*xres == 0)
 {
  *xres = *yres;
 }
 else if (*yres == 0)
 {
  *yres = *xres;
 }


 if (*xres < SANE_DPI || *yres < SANE_DPI || *xres > INSANE_DPI || *yres > INSANE_DPI)
 {
  if (*xres == *yres)
  {
   *xres = SANE_DPI;
   *yres = SANE_DPI;
  }
  else if (*xres < *yres)
  {
   *yres = *yres * SANE_DPI / *xres;
   *xres = SANE_DPI;
  }
  else
  {
   *xres = *xres * SANE_DPI / *yres;
   *yres = SANE_DPI;
  }
 }
}
