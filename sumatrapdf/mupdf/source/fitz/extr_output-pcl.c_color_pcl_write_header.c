
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_output ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_band_writer ;
struct TYPE_3__ {int w; int h; int n; int s; int alpha; int xres; int yres; int * out; } ;
struct TYPE_4__ {int options; int linebuf; TYPE_1__ super; } ;
typedef TYPE_2__ color_pcl_band_writer ;


 int FZ_ERROR_GENERIC ;
 int fz_malloc (int *,int) ;
 int fz_throw (int *,int ,char*) ;
 int fz_write_data (int *,int *,char*,int) ;
 int fz_write_printf (int *,int *,char*,int) ;
 int fz_write_string (int *,int *,char*) ;
 int guess_paper_size (int *,int,int,int,int) ;
 int pcl_header (int *,int *,int *,int,int,int,int,int) ;

__attribute__((used)) static void
color_pcl_write_header(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
 color_pcl_band_writer *writer = (color_pcl_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 int n = writer->super.n;
 int s = writer->super.s;
 int a = writer->super.alpha;
 int xres = writer->super.xres;
 int yres = writer->super.yres;

 if (a != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "color PCL cannot write alpha channel");
 if (s != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "color PCL cannot write spot colors");
 if (n != 3)
  fz_throw(ctx, FZ_ERROR_GENERIC, "color PCL must be RGB");

 writer->linebuf = fz_malloc(ctx, w * 3 * 2);

 guess_paper_size(&writer->options, w, h, xres, yres);

 pcl_header(ctx, out, &writer->options, 1, xres, yres, w, h);



 fz_write_string(ctx, out, "\033&r0F");


 fz_write_data(ctx, out, "\033*v6W"
  "\000"
  "\003"
  "\000"
  "\010"
  "\010"
  "\010",
  11
  );




 fz_write_printf(ctx, out, "\033*t%dR", xres);
}
