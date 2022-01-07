
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* stack; scalar_t__* vars; scalar_t__* args; int heap; scalar_t__* arrays; TYPE_1__* func; scalar_t__ this_obj; int dynamic_vars; scalar_t__ ret_val; } ;
typedef TYPE_2__ exec_ctx_t ;
struct TYPE_4__ {unsigned int arg_cnt; unsigned int var_cnt; } ;


 int IDispatch_Release (scalar_t__) ;
 int SafeArrayDestroy (scalar_t__) ;
 int VariantClear (scalar_t__*) ;
 int heap_free (scalar_t__*) ;
 int heap_pool_free (int *) ;
 int release_dynamic_vars (int ) ;

__attribute__((used)) static void release_exec(exec_ctx_t *ctx)
{
    unsigned i;

    VariantClear(&ctx->ret_val);
    release_dynamic_vars(ctx->dynamic_vars);

    if(ctx->this_obj)
        IDispatch_Release(ctx->this_obj);

    if(ctx->args) {
        for(i=0; i < ctx->func->arg_cnt; i++)
            VariantClear(ctx->args+i);
    }

    if(ctx->vars) {
        for(i=0; i < ctx->func->var_cnt; i++)
            VariantClear(ctx->vars+i);
    }

    if(ctx->arrays) {
        for(i=0; i < ctx->func->var_cnt; i++) {
            if(ctx->arrays[i])
                SafeArrayDestroy(ctx->arrays[i]);
        }
        heap_free(ctx->arrays);
    }

    heap_pool_free(&ctx->heap);
    heap_free(ctx->args);
    heap_free(ctx->vars);
    heap_free(ctx->stack);
}
