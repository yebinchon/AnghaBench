
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int w; int h; int s; int n; int alpha; int xres; int yres; int * seps; int * out; } ;
struct TYPE_13__ {int num_additive; TYPE_1__ super; } ;
typedef TYPE_4__ psd_band_writer ;
typedef int fz_separations ;
typedef int fz_output ;
typedef int fz_context ;
struct TYPE_11__ {int buffer; } ;
struct TYPE_12__ {TYPE_2__ icc; } ;
struct TYPE_14__ {int n; TYPE_3__ u; } ;
typedef TYPE_5__ fz_colorspace ;
typedef int fz_band_writer ;


 size_t fz_buffer_storage (int *,int ,unsigned char**) ;
 int fz_colorspace_is_subtractive (int *,TYPE_5__*) ;
 int fz_default_color_params ;
 TYPE_5__* fz_device_cmyk (int *) ;
 int fz_separation_equivalent (int *,int *,int,TYPE_5__*,float*,int *,int ) ;
 char* fz_separation_name (int *,int *,int) ;
 int fz_snprintf (char*,int,char*,int) ;
 int fz_write_byte (int *,int *,int) ;
 int fz_write_data (int *,int *,...) ;
 int fz_write_int16_be (int *,int *,int) ;
 int fz_write_int32_be (int *,int *,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
psd_write_header(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
 psd_band_writer *writer = (psd_band_writer *)(void *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 int s = writer->super.s;
 int n = writer->super.n;
 int c = n - writer->super.alpha - s;
 fz_separations *seps = writer->super.seps;
 int i;
 size_t len;
 static const char psdsig[12] = { '8', 'B', 'P', 'S', 0, 1, 0, 0, 0, 0, 0, 0 };
 static const char ressig[4] = { '8', 'B', 'I', 'M' };
 unsigned char *data;
 size_t size;
 fz_colorspace *cs_cmyk = cs;




 size = 0;
 data = ((void*)0);


 if (cs->n != 4)
  cs_cmyk = fz_device_cmyk(ctx);

 if (!fz_colorspace_is_subtractive(ctx, cs))
  writer->num_additive = cs->n;


 fz_write_data(ctx, out, psdsig, 12);
 fz_write_int16_be(ctx, out, n);
 fz_write_int32_be(ctx, out, h);
 fz_write_int32_be(ctx, out, w);
 fz_write_int16_be(ctx, out, 8);

 switch (c)
 {
 case 0:
 case 1:
  fz_write_int16_be(ctx, out, 1);
  break;
 case 3:
  fz_write_int16_be(ctx, out, 3);
  break;
 case 4:
  fz_write_int16_be(ctx, out, 4);
  break;
 default:
  fz_write_int16_be(ctx, out, 7);
  break;
 }


 fz_write_int32_be(ctx, out, 0);



 len = 0;
 for (i = 0; i < s; i++)
 {
  const char *name = fz_separation_name(ctx, seps, i);
  char text[32];
  size_t len2;
  if (name == ((void*)0))
  {
   fz_snprintf(text, sizeof text, "Spot%d", i-4);
   name = text;
  }
  len2 = strlen(name);
  if (len2 > 255)
   len2 = 255;
  len += len2 + 1;
 }


 fz_write_int32_be(ctx, out,
   (s ? 12 + ((len + 1)&~1) : 0) +
   (s ? 12 + (14 * s) : 0) +
   28 +
   (size ? (size+19)&~1 : 0));


 if (s != 0)
 {
  fz_write_data(ctx, out, ressig, 4);
  fz_write_int16_be(ctx, out, 0x03EE);
  fz_write_int16_be(ctx, out, 0);
  fz_write_int32_be(ctx, out, (len + 1)&~1);
  for (i = 0; i < s; i++) {
   size_t len2;
   const char *name = fz_separation_name(ctx, seps, i);
   char text[32];
   if (name == ((void*)0))
   {
    fz_snprintf(text, sizeof text, "Spot%d", i-4);
    name = text;
   }
   len2 = strlen(name);
   if (len2 > 255)
    len2 = 255;
   fz_write_byte(ctx, out, len2);
   fz_write_data(ctx, out, name, len2);
  }
  if (len & 1)
  {
   fz_write_byte(ctx, out, 0);
  }


  fz_write_data(ctx, out, ressig, 4);
  fz_write_int16_be(ctx, out, 0x03EF);
  fz_write_int16_be(ctx, out, 0);
  fz_write_int32_be(ctx, out, 14 * s);
  for (i = 0; i < s; i++) {
   float cmyk[4];
   fz_separation_equivalent(ctx, seps, i, cs_cmyk, cmyk, ((void*)0), fz_default_color_params);
   fz_write_int16_be(ctx, out, 02);

   fz_write_int16_be(ctx, out, 65535 * (1-cmyk[0]));
   fz_write_int16_be(ctx, out, 65535 * (1-cmyk[1]));
   fz_write_int16_be(ctx, out, 65535 * (1-cmyk[2]));
   fz_write_int16_be(ctx, out, 65535 * (1-cmyk[3]));
   fz_write_int16_be(ctx, out, 0);
   fz_write_byte(ctx, out, 2);
   fz_write_byte(ctx, out, 0);
  }
 }


 if (size != 0)
 {

  fz_write_data(ctx, out, ressig, 4);
  fz_write_int16_be(ctx, out, 0x40f);
  fz_write_data(ctx, out, "\x07Profile", 8);
  fz_write_int32_be(ctx, out, size);
  fz_write_data(ctx, out, data, size);
  if (size & 1)
   fz_write_byte(ctx, out, 0);
 }


 fz_write_data(ctx, out, ressig, 4);
 fz_write_int16_be(ctx, out, 0x03ED);
 fz_write_int16_be(ctx, out, 0);
 fz_write_int32_be(ctx, out, 16);

 fz_write_int32_be(ctx, out, writer->super.xres);
 fz_write_int16_be(ctx, out, 1);
 fz_write_int16_be(ctx, out, 1);
 fz_write_int32_be(ctx, out, writer->super.yres);
 fz_write_int16_be(ctx, out, 1);
 fz_write_int16_be(ctx, out, 1);


 fz_write_int32_be(ctx, out, 0);


 fz_write_int16_be(ctx, out, 0);
}
