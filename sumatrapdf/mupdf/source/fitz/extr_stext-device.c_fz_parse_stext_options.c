
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ fz_stext_options ;
typedef int fz_context ;


 int FZ_STEXT_INHIBIT_SPACES ;
 int FZ_STEXT_PRESERVE_IMAGES ;
 int FZ_STEXT_PRESERVE_LIGATURES ;
 int FZ_STEXT_PRESERVE_WHITESPACE ;
 scalar_t__ fz_has_option (int *,char const*,char*,char const**) ;
 scalar_t__ fz_option_eq (char const*,char*) ;
 int memset (TYPE_1__*,int ,int) ;

fz_stext_options *
fz_parse_stext_options(fz_context *ctx, fz_stext_options *opts, const char *string)
{
 const char *val;

 memset(opts, 0, sizeof *opts);

 if (fz_has_option(ctx, string, "preserve-ligatures", &val) && fz_option_eq(val, "yes"))
  opts->flags |= FZ_STEXT_PRESERVE_LIGATURES;
 if (fz_has_option(ctx, string, "preserve-whitespace", &val) && fz_option_eq(val, "yes"))
  opts->flags |= FZ_STEXT_PRESERVE_WHITESPACE;
 if (fz_has_option(ctx, string, "preserve-images", &val) && fz_option_eq(val, "yes"))
  opts->flags |= FZ_STEXT_PRESERVE_IMAGES;
 if (fz_has_option(ctx, string, "inhibit-spaces", &val) && fz_option_eq(val, "yes"))
  opts->flags |= FZ_STEXT_INHIBIT_SPACES;

 return opts;
}
