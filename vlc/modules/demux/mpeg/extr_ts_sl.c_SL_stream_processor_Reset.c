
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ priv; } ;
typedef TYPE_1__ ts_stream_processor_t ;
struct TYPE_5__ {int * p_au; int ** pp_au_last; } ;
typedef TYPE_2__ SL_stream_processor_context_t ;


 int block_ChainRelease (int *) ;

__attribute__((used)) static void SL_stream_processor_Reset( ts_stream_processor_t *h )
{
    SL_stream_processor_context_t *ctx = (SL_stream_processor_context_t *) h->priv;
    block_ChainRelease( ctx->p_au );
    ctx->p_au = ((void*)0);
    ctx->pp_au_last = &ctx->p_au;
}
