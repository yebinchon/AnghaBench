
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ts_stream_t ;
struct TYPE_5__ {int pf_reset; int pf_push; int pf_delete; TYPE_2__* priv; } ;
typedef TYPE_1__ ts_stream_processor_t ;
struct TYPE_6__ {int * p_stream; int * p_au; int ** pp_au_last; } ;
typedef TYPE_2__ SL_stream_processor_context_t ;


 int SL_stream_processor_Delete ;
 int SL_stream_processor_Push ;
 int SL_stream_processor_Reset ;
 int free (TYPE_1__*) ;
 void* malloc (int) ;

ts_stream_processor_t *SL_stream_processor_New( ts_stream_t *p_stream )
{
    ts_stream_processor_t *h = malloc(sizeof(*h));
    if(!h)
        return ((void*)0);

    SL_stream_processor_context_t *ctx = malloc( sizeof(SL_stream_processor_context_t) );
    if(!ctx)
    {
        free(h);
        return ((void*)0);
    }
    ctx->p_au = ((void*)0);
    ctx->pp_au_last = &ctx->p_au;
    ctx->p_stream = p_stream;

    h->priv = ctx;
    h->pf_delete = SL_stream_processor_Delete;
    h->pf_push = SL_stream_processor_Push;
    h->pf_reset = SL_stream_processor_Reset;

    return h;
}
