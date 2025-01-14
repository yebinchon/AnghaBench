
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * opaque; int zfree; int zalloc; } ;
struct TYPE_4__ {int w; int h; int n; int alpha; int xres; int yres; int pagenum; scalar_t__ s; int * out; } ;
struct TYPE_5__ {TYPE_3__ stream; TYPE_1__ super; } ;
typedef TYPE_2__ ps_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_OK ;
 int deflateInit (TYPE_3__*,int ) ;
 int fz_throw (int *,int ,char*,...) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int fz_write_string (int *,int *,char*) ;
 int fz_zlib_alloc ;
 int fz_zlib_free ;

__attribute__((used)) static void
ps_write_header(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
 ps_band_writer *writer = (ps_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 int n = writer->super.n;
 int alpha = writer->super.alpha;
 int xres = writer->super.xres;
 int yres = writer->super.yres;
 int pagenum = writer->super.pagenum;
 int w_points = (w * 72 + (xres>>1)) / xres;
 int h_points = (h * 72 + (yres>>1)) / yres;
 float sx = (float) w / w_points;
 float sy = (float) h / h_points;
 int err;

 if (writer->super.s != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Postscript writer cannot cope with spot colors");

 if (alpha != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Postscript output cannot have alpha");

 writer->super.w = w;
 writer->super.h = h;
 writer->super.n = n;

 writer->stream.zalloc = fz_zlib_alloc;
 writer->stream.zfree = fz_zlib_free;
 writer->stream.opaque = ctx;

 err = deflateInit(&writer->stream, Z_DEFAULT_COMPRESSION);
 if (err != Z_OK)
  fz_throw(ctx, FZ_ERROR_GENERIC, "compression error %d", err);

 fz_write_printf(ctx, out, "%%%%Page: %d %d\n", pagenum, pagenum);
 fz_write_printf(ctx, out, "%%%%PageBoundingBox: 0 0 %d %d\n", w_points, h_points);
 fz_write_printf(ctx, out, "%%%%BeginPageSetup\n");
 fz_write_printf(ctx, out, "<</PageSize [%d %d]>> setpagedevice\n", w_points, h_points);
 fz_write_printf(ctx, out, "%%%%EndPageSetup\n\n");
 fz_write_printf(ctx, out, "/DataFile currentfile /FlateDecode filter def\n\n");
 switch(n)
 {
 case 1:
  fz_write_string(ctx, out, "/DeviceGray setcolorspace\n");
  break;
 case 3:
  fz_write_string(ctx, out, "/DeviceRGB setcolorspace\n");
  break;
 case 4:
  fz_write_string(ctx, out, "/DeviceCMYK setcolorspace\n");
  break;
 default:
  fz_throw(ctx, FZ_ERROR_GENERIC, "Unexpected colorspace for ps output");
 }
 fz_write_printf(ctx, out,
  "<<\n"
  "/ImageType 1\n"
  "/Width %d\n"
  "/Height %d\n"
  "/ImageMatrix [ %g 0 0 -%g 0 %d ]\n"
  "/MultipleDataSources false\n"
  "/DataSource DataFile\n"
  "/BitsPerComponent 8\n"

  "/Interpolate false\n"
  ">>\n"
  "image\n"
  , w, h, sx, sy, h);
}
