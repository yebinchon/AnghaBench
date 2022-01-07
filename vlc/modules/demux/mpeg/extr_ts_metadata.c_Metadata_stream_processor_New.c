
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ts_stream_t ;
struct TYPE_5__ {int * pf_reset; int pf_push; int pf_delete; TYPE_2__* priv; } ;
typedef TYPE_1__ ts_stream_processor_t ;
typedef int es_out_t ;
struct TYPE_6__ {int * p_stream; int * out; } ;
typedef TYPE_2__ Metadata_stream_processor_context_t ;


 int Metadata_stream_processor_Delete ;
 int Metadata_stream_processor_Push ;
 int free (TYPE_1__*) ;
 void* malloc (int) ;

ts_stream_processor_t *Metadata_stream_processor_New( ts_stream_t *p_stream, es_out_t *out )
{
    ts_stream_processor_t *h = malloc(sizeof(*h));
    if(!h)
        return ((void*)0);

    Metadata_stream_processor_context_t *ctx = malloc( sizeof(Metadata_stream_processor_context_t) );
    if(!ctx)
    {
        free(h);
        return ((void*)0);
    }
    ctx->out = out;
    ctx->p_stream = p_stream;

    h->priv = ctx;
    h->pf_delete = Metadata_stream_processor_Delete;
    h->pf_push = Metadata_stream_processor_Push;
    h->pf_reset = ((void*)0);

    return h;
}
