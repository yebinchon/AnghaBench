
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_output ;
typedef int fz_context ;
typedef int fz_colorspace ;
struct TYPE_3__ {int w; int h; scalar_t__ s; int * out; } ;
typedef TYPE_1__ fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_write_printf (int *,int *,char*,int,int) ;

__attribute__((used)) static void
pbm_write_header(fz_context *ctx, fz_band_writer *writer, fz_colorspace *cs)
{
 fz_output *out = writer->out;
 int w = writer->w;
 int h = writer->h;

 if (writer->s != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "pbms cannot contain spot colors");

 fz_write_printf(ctx, out, "P4\n%d %d\n", w, h);
}
