
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int colorspace; scalar_t__ seps; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;
typedef int fz_colorspace ;


 char* fz_colorspace_colorant (int *,int *,int) ;
 scalar_t__ fz_colorspace_device_n_has_cmyk (int *,int *) ;
 scalar_t__ fz_colorspace_device_n_has_only_cmyk (int *,int *) ;
 scalar_t__ fz_colorspace_is_subtractive (int *,int ) ;
 int fz_colorspace_n (int *,int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
colors_supported(fz_context *ctx, fz_colorspace *cs, fz_pixmap *dest)
{


 if (!fz_colorspace_is_subtractive(ctx, dest->colorspace) && fz_colorspace_device_n_has_cmyk(ctx, cs))
  return 0;


 if (dest->seps)
  return 1;



 if (fz_colorspace_is_subtractive(ctx, dest->colorspace))
 {
  int i, n;
  if (fz_colorspace_device_n_has_only_cmyk(ctx, cs))
   return 1;

  n = fz_colorspace_n(ctx, cs);
  for (i = 0; i < n; i++)
  {
   const char *name = fz_colorspace_colorant(ctx, cs, i);

   if (!name)
    return 0;
   if (!strcmp(name, "All"))
    continue;
   if (!strcmp(name, "Cyan"))
    continue;
   if (!strcmp(name, "Magenta"))
    continue;
   if (!strcmp(name, "Yellow"))
    continue;
   if (!strcmp(name, "Black"))
    continue;
   if (!strcmp(name, "None"))
    continue;
   return 0;
  }
  return 1;
 }

 return 0;
}
