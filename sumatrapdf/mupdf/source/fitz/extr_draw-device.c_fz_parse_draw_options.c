
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x_resolution; int y_resolution; void* height; void* width; void* text; void* graphics; scalar_t__ alpha; void* colorspace; void* rotate; } ;
typedef TYPE_1__ fz_draw_options ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 void* fz_aa_level (int *) ;
 void* fz_atoi (char const*) ;
 void* fz_device_cmyk (int *) ;
 void* fz_device_gray (int *) ;
 void* fz_device_rgb (int *) ;
 scalar_t__ fz_has_option (int *,char const*,char*,char const**) ;
 scalar_t__ fz_option_eq (char const*,char*) ;
 void* fz_text_aa_level (int *) ;
 int fz_throw (int *,int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 void* parse_aa_opts (char const*) ;

fz_draw_options *
fz_parse_draw_options(fz_context *ctx, fz_draw_options *opts, const char *args)
{
 const char *val;

 memset(opts, 0, sizeof *opts);

 opts->x_resolution = 96;
 opts->y_resolution = 96;
 opts->rotate = 0;
 opts->width = 0;
 opts->height = 0;
 opts->colorspace = fz_device_rgb(ctx);
 opts->alpha = 0;
 opts->graphics = fz_aa_level(ctx);
 opts->text = fz_text_aa_level(ctx);

 if (fz_has_option(ctx, args, "rotate", &val))
  opts->rotate = fz_atoi(val);
 if (fz_has_option(ctx, args, "resolution", &val))
  opts->x_resolution = opts->y_resolution = fz_atoi(val);
 if (fz_has_option(ctx, args, "x-resolution", &val))
  opts->x_resolution = fz_atoi(val);
 if (fz_has_option(ctx, args, "y-resolution", &val))
  opts->y_resolution = fz_atoi(val);
 if (fz_has_option(ctx, args, "width", &val))
  opts->width = fz_atoi(val);
 if (fz_has_option(ctx, args, "height", &val))
  opts->height = fz_atoi(val);
 if (fz_has_option(ctx, args, "colorspace", &val))
 {
  if (fz_option_eq(val, "gray") || fz_option_eq(val, "grey") || fz_option_eq(val, "mono"))
   opts->colorspace = fz_device_gray(ctx);
  else if (fz_option_eq(val, "rgb"))
   opts->colorspace = fz_device_rgb(ctx);
  else if (fz_option_eq(val, "cmyk"))
   opts->colorspace = fz_device_cmyk(ctx);
  else
   fz_throw(ctx, FZ_ERROR_GENERIC, "unknown colorspace in options");
 }
 if (fz_has_option(ctx, args, "alpha", &val))
  opts->alpha = fz_option_eq(val, "yes");
 if (fz_has_option(ctx, args, "graphics", &val))
  opts->text = opts->graphics = parse_aa_opts(val);
 if (fz_has_option(ctx, args, "text", &val))
  opts->text = parse_aa_opts(val);


 if (opts->x_resolution <= 0) opts->x_resolution = 96;
 if (opts->y_resolution <= 0) opts->y_resolution = 96;
 if (opts->width < 0) opts->width = 0;
 if (opts->height < 0) opts->height = 0;

 return opts;
}
