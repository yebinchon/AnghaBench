
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int compress; int strip_height; } ;
typedef TYPE_1__ fz_pclm_options ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_atoi (char const*) ;
 scalar_t__ fz_has_option (int *,char const*,char*,char const**) ;
 scalar_t__ fz_option_eq (char const*,char*) ;
 int fz_throw (int *,int ,char*,...) ;
 int memset (TYPE_1__*,int ,int) ;

fz_pclm_options *
fz_parse_pclm_options(fz_context *ctx, fz_pclm_options *opts, const char *args)
{
 const char *val;

 memset(opts, 0, sizeof *opts);

 if (fz_has_option(ctx, args, "compression", &val))
 {
  if (fz_option_eq(val, "none"))
   opts->compress = 0;
  else if (fz_option_eq(val, "flate"))
   opts->compress = 1;
  else
   fz_throw(ctx, FZ_ERROR_GENERIC, "Unsupported PCLm compression %s (none, or flate only)", val);
 }
 if (fz_has_option(ctx, args, "strip-height", &val))
 {
  int i = fz_atoi(val);
  if (i <= 0)
   fz_throw(ctx, FZ_ERROR_GENERIC, "Unsupported PCLm strip height %d (suggest 16)", i);
  opts->strip_height = i;
 }

 return opts;
}
