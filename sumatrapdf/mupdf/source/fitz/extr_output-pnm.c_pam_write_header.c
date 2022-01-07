
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
pam_write_header(fz_context *ctx, fz_band_writer *writer, fz_colorspace *cs)
{
 fz_output *out = writer->out;
 int w = writer->w;
 int h = writer->h;
 int n = writer->n;
 int alpha = writer->alpha;

 if (writer->s != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "PAM writer cannot cope with spot colors");

 fz_write_printf(ctx, out, "P7\n");
 fz_write_printf(ctx, out, "WIDTH %d\n", w);
 fz_write_printf(ctx, out, "HEIGHT %d\n", h);
 fz_write_printf(ctx, out, "DEPTH %d\n", n);
 fz_write_printf(ctx, out, "MAXVAL 255\n");

 n -= alpha;

 if (n == 0 && alpha) fz_write_printf(ctx, out, "TUPLTYPE GRAYSCALE\n");
 else if (n == 1 && !alpha) fz_write_printf(ctx, out, "TUPLTYPE GRAYSCALE\n");
 else if (n == 1 && alpha) fz_write_printf(ctx, out, "TUPLTYPE GRAYSCALE_ALPHA\n");
 else if (n == 3 && !alpha) fz_write_printf(ctx, out, "TUPLTYPE RGB\n");
 else if (n == 3 && alpha) fz_write_printf(ctx, out, "TUPLTYPE RGB_ALPHA\n");
 else if (n == 4 && !alpha) fz_write_printf(ctx, out, "TUPLTYPE CMYK\n");
 else if (n == 4 && alpha) fz_write_printf(ctx, out, "TUPLTYPE CMYK_ALPHA\n");
 fz_write_printf(ctx, out, "ENDHDR\n");
}
