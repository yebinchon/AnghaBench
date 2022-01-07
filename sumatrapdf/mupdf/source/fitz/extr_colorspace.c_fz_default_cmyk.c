
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cmyk; } ;
typedef TYPE_1__ fz_default_colorspaces ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * fz_device_cmyk (int *) ;

fz_colorspace *fz_default_cmyk(fz_context *ctx, const fz_default_colorspaces *default_cs)
{
 return default_cs ? default_cs->cmyk : fz_device_cmyk(ctx);
}
