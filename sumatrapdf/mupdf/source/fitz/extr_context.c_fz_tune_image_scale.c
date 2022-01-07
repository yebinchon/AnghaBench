
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_tune_image_scale_fn ;
struct TYPE_5__ {TYPE_1__* tuning; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_4__ {void* image_scale_arg; int * image_scale; } ;


 int * fz_default_image_scale ;

void fz_tune_image_scale(fz_context *ctx, fz_tune_image_scale_fn *image_scale, void *arg)
{
 ctx->tuning->image_scale = image_scale ? image_scale : fz_default_image_scale;
 ctx->tuning->image_scale_arg = arg;
}
