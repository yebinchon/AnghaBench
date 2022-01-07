
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ errcode; } ;
struct TYPE_5__ {TYPE_1__ error; } ;
typedef TYPE_2__ fz_context ;


 scalar_t__ FZ_ERROR_NONE ;
 int assert (int ) ;

int fz_caught(fz_context *ctx)
{
 assert(ctx && ctx->error.errcode >= FZ_ERROR_NONE);
 return ctx->error.errcode;
}
