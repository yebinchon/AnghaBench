
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int eits; int etts; scalar_t__ i_tabletype; int * p_a65; int * p_vct; int * p_stt; int * p_mgt; } ;
typedef TYPE_1__ ts_psip_context_t ;


 int ARRAY_INIT (int ) ;
 scalar_t__ likely (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

ts_psip_context_t * ts_psip_context_New()
{
    ts_psip_context_t *p_ctx = malloc(sizeof(*p_ctx));
    if(likely(p_ctx))
    {
        p_ctx->p_mgt = ((void*)0);
        p_ctx->p_stt = ((void*)0);
        p_ctx->p_vct = ((void*)0);
        p_ctx->p_a65 = ((void*)0);
        p_ctx->i_tabletype = 0;
        ARRAY_INIT(p_ctx->etts);
        ARRAY_INIT(p_ctx->eits);
    }
    return p_ctx;
}
