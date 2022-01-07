
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocator; } ;
typedef TYPE_1__ Jbig2Ctx ;
typedef int Jbig2ArithIntCtx ;


 int jbig2_free (int ,int *) ;

void
jbig2_arith_int_ctx_free(Jbig2Ctx *ctx, Jbig2ArithIntCtx *iax)
{
    jbig2_free(ctx->allocator, iax);
}
