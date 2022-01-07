
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_tune_image_decode_fn ;
struct TYPE_5__ {TYPE_1__* tuning; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_4__ {void* image_decode_arg; int * image_decode; } ;


 int * fz_default_image_decode ;

void fz_tune_image_decode(fz_context *ctx, fz_tune_image_decode_fn *image_decode, void *arg)
{
 ctx->tuning->image_decode = image_decode ? image_decode : fz_default_image_decode;
 ctx->tuning->image_decode_arg = arg;
}
