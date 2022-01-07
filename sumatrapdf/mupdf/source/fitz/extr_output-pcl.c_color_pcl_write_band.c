
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;
struct TYPE_4__ {int w; int h; int xres; int * out; } ;
struct TYPE_5__ {TYPE_1__ super; } ;
typedef TYPE_2__ color_pcl_band_writer ;


 int color_pcl_compress_column (int *,TYPE_2__*,unsigned char const*,int,int,int) ;
 int fz_write_printf (int *,int *,char*,int,...) ;
 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
color_pcl_write_band(fz_context *ctx, fz_band_writer *writer_, int stride, int band_start, int band_height, const unsigned char *sp)
{
 color_pcl_band_writer *writer = (color_pcl_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 int xres = writer->super.xres;
 int cw;
 int x;

 if (!out)
  return;

 if (band_start+band_height >= h)
  band_height = h - band_start;





 cw = 10800;
 if (cw > w)
  cw = w;

 for (x = 0; x*cw < w; x++)
 {
  int col_w = w - cw*x;
  if (col_w > cw)
   col_w = cw;


  fz_write_printf(ctx, out, "\033*p%dx%dY", x*cw, band_start);


  fz_write_printf(ctx, out, "\033*r%dT", band_height);


  fz_write_printf(ctx, out, "\033*r%dS", col_w);


  fz_write_printf(ctx, out, "\033*t%dV", band_height*720/xres);


  fz_write_printf(ctx, out, "\033*t%dH", col_w*720/xres);



  fz_write_string(ctx, out, "\033*r3A");



  fz_write_string(ctx, out, "\033*b5M");

  color_pcl_compress_column(ctx, writer, sp + x * cw * 3, col_w, band_height, stride);
 }
}
