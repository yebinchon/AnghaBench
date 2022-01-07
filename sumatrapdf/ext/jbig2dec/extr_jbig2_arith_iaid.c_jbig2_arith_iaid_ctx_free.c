
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* IAIDx; } ;
struct TYPE_6__ {int allocator; } ;
typedef TYPE_1__ Jbig2Ctx ;
typedef TYPE_2__ Jbig2ArithIaidCtx ;


 int jbig2_free (int ,TYPE_2__*) ;

void
jbig2_arith_iaid_ctx_free(Jbig2Ctx *ctx, Jbig2ArithIaidCtx *iax)
{
    if (iax != ((void*)0)) {
        jbig2_free(ctx->allocator, iax->IAIDx);
        jbig2_free(ctx->allocator, iax);
    }
}
