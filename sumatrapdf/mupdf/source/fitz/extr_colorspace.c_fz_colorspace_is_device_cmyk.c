
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_colorspace ;


 scalar_t__ fz_colorspace_is_cmyk (int *,int *) ;
 scalar_t__ fz_colorspace_is_device (int *,int *) ;

int fz_colorspace_is_device_cmyk(fz_context *ctx, fz_colorspace *cs)
{
 return fz_colorspace_is_device(ctx, cs) && fz_colorspace_is_cmyk(ctx, cs);
}
