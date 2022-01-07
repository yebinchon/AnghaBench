
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_default_colorspaces ;
typedef int fz_context ;
typedef int fz_colorspace ;





 int fz_colorspace_type (int *,int *) ;
 int * fz_default_cmyk (int *,int *) ;
 int * fz_default_gray (int *,int *) ;
 int * fz_default_rgb (int *,int *) ;
 int * fz_device_cmyk (int *) ;
 int * fz_device_gray (int *) ;
 int * fz_device_rgb (int *) ;

__attribute__((used)) static fz_colorspace *fz_default_colorspace(fz_context *ctx, fz_default_colorspaces *default_cs, fz_colorspace *cs)
{
 if (cs == ((void*)0))
  return ((void*)0);
 if (default_cs == ((void*)0))
  return cs;

 switch (fz_colorspace_type(ctx, cs))
 {
 case 129:
  if (cs == fz_device_gray(ctx))
   return fz_default_gray(ctx, default_cs);
  break;
 case 128:
  if (cs == fz_device_rgb(ctx))
   return fz_default_rgb(ctx, default_cs);
  break;
 case 130:
  if (cs == fz_device_cmyk(ctx))
   return fz_default_cmyk(ctx, default_cs);
  break;
 default:
  break;
 }
 return cs;
}
