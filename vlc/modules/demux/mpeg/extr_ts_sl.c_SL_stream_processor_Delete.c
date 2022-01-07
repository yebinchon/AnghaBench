
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_au; scalar_t__ priv; } ;
typedef TYPE_1__ ts_stream_processor_t ;
typedef TYPE_1__ SL_stream_processor_context_t ;


 int block_ChainRelease (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void SL_stream_processor_Delete( ts_stream_processor_t *h )
{
    SL_stream_processor_context_t *ctx = (SL_stream_processor_context_t *) h->priv;
    block_ChainRelease( ctx->p_au );
    free( ctx );
    free( h );
}
