
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* colorspace; } ;
typedef TYPE_2__ fz_context ;
typedef int fz_colorspace ;
struct TYPE_4__ {int * bgr; } ;



fz_colorspace *fz_device_bgr(fz_context *ctx)
{
 return ctx->colorspace->bgr;
}
