
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* tuning; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_6__ {int refs; int image_scale; int image_decode; } ;


 int fz_default_image_decode ;
 int fz_default_image_scale ;
 TYPE_3__* fz_malloc_struct (TYPE_1__*,int ) ;
 int fz_tuning_context ;

__attribute__((used)) static void fz_new_tuning_context(fz_context *ctx)
{
 if (ctx)
 {
  ctx->tuning = fz_malloc_struct(ctx, fz_tuning_context);
  ctx->tuning->refs = 1;
  ctx->tuning->image_decode = fz_default_image_decode;
  ctx->tuning->image_scale = fz_default_image_scale;
 }
}
