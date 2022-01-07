
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; scalar_t__ s; scalar_t__ alpha; int h; int w; int yres; int xres; int out; } ;
struct TYPE_4__ {TYPE_1__ super; int pwg; } ;
typedef TYPE_2__ pwg_band_writer ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int pwg_page_header (int *,int ,int *,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
pwg_write_header(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
 pwg_band_writer *writer = (pwg_band_writer *)writer_;
 int n = writer->super.n;

 if (writer->super.s != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "PWG band writer cannot cope with spot colors");
 if (writer->super.alpha != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "PWG band writer cannot cope with alpha");
 if (n != 1 && n != 3 && n != 4)
  fz_throw(ctx, FZ_ERROR_GENERIC, "pixmap must be grayscale, rgb or cmyk to write as pwg");

 pwg_page_header(ctx, writer->super.out, &writer->pwg,
   writer->super.xres, writer->super.yres, writer->super.w, writer->super.h, n*8);
}
