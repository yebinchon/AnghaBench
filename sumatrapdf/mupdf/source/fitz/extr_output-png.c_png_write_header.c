
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int w; int h; int n; int alpha; scalar_t__ s; int * out; } ;
struct TYPE_5__ {TYPE_1__ super; } ;
typedef TYPE_2__ png_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int big32 (unsigned char*,int) ;
 int fz_throw (int *,int ,char*) ;
 int fz_write_data (int *,int *,unsigned char const*,int) ;
 int png_write_icc (int *,TYPE_2__*,int *) ;
 int putchunk (int *,int *,char*,unsigned char*,int) ;

__attribute__((used)) static void
png_write_header(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
 png_band_writer *writer = (png_band_writer *)(void *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 int n = writer->super.n;
 int alpha = writer->super.alpha;
 static const unsigned char pngsig[8] = { 137, 80, 78, 71, 13, 10, 26, 10 };
 unsigned char head[13];
 int color;

 if (writer->super.s != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "PNGs cannot contain spot colors");


 if (n == 1 && alpha)
  alpha = 0;

 switch (n - alpha)
 {
 case 1: color = (alpha ? 4 : 0); break;
 case 3: color = (alpha ? 6 : 2); break;
 default:
  fz_throw(ctx, FZ_ERROR_GENERIC, "pixmap must be grayscale or rgb to write as png");
 }

 big32(head+0, w);
 big32(head+4, h);
 head[8] = 8;
 head[9] = color;
 head[10] = 0;
 head[11] = 0;
 head[12] = 0;

 fz_write_data(ctx, out, pngsig, 8);
 putchunk(ctx, out, "IHDR", head, 13);

 png_write_icc(ctx, writer, cs);
}
