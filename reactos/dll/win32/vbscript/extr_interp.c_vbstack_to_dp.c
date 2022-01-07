
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int top; int * stack; } ;
typedef TYPE_1__ exec_ctx_t ;
typedef int VARIANT ;
struct TYPE_6__ {int cNamedArgs; unsigned int cArgs; int * rgvarg; int * rgdispidNamedArgs; } ;
typedef TYPE_2__ DISPPARAMS ;
typedef scalar_t__ BOOL ;


 int assert (int) ;
 int propput_dispid ;

__attribute__((used)) static void vbstack_to_dp(exec_ctx_t *ctx, unsigned arg_cnt, BOOL is_propput, DISPPARAMS *dp)
{
    dp->cNamedArgs = is_propput ? 1 : 0;
    dp->cArgs = arg_cnt + dp->cNamedArgs;
    dp->rgdispidNamedArgs = is_propput ? &propput_dispid : ((void*)0);

    if(arg_cnt) {
        VARIANT tmp;
        unsigned i;

        assert(ctx->top >= arg_cnt);

        for(i=1; i*2 <= arg_cnt; i++) {
            tmp = ctx->stack[ctx->top-i];
            ctx->stack[ctx->top-i] = ctx->stack[ctx->top-arg_cnt+i-1];
            ctx->stack[ctx->top-arg_cnt+i-1] = tmp;
        }

        dp->rgvarg = ctx->stack + ctx->top-dp->cArgs;
    }else {
        dp->rgvarg = is_propput ? ctx->stack+ctx->top-1 : ((void*)0);
    }
}
