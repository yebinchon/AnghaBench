
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_output ;
typedef int fz_context ;
typedef int fz_colorspace ;
struct TYPE_3__ {int w; int h; int n; int alpha; scalar_t__ s; int * out; } ;
typedef TYPE_1__ fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
pnm_write_header(fz_context *ctx, fz_band_writer *writer, fz_colorspace *cs)
{
 fz_output *out = writer->out;
 int w = writer->w;
 int h = writer->h;
 int n = writer->n;
 int alpha = writer->alpha;

 if (writer->s != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "PNM writer cannot cope with spot colors");

 if (alpha)
  fz_throw(ctx, FZ_ERROR_GENERIC, "PNM writer cannot cope with alpha");

 n -= alpha;
 if (n != 1 && n != 3)
  fz_throw(ctx, FZ_ERROR_GENERIC, "pixmap must be grayscale or rgb to write as pnm");

 if (n == 1)
  fz_write_printf(ctx, out, "P5\n");
 if (n == 3)
  fz_write_printf(ctx, out, "P6\n");
 fz_write_printf(ctx, out, "%d %d\n", w, h);
 fz_write_printf(ctx, out, "255\n");
}
