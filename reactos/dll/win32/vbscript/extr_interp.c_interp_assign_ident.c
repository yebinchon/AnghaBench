
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* instr; } ;
typedef TYPE_4__ exec_ctx_t ;
struct TYPE_10__ {unsigned int uint; } ;
struct TYPE_9__ {int bstr; } ;
struct TYPE_11__ {TYPE_2__ arg2; TYPE_1__ arg1; } ;
typedef int HRESULT ;
typedef int DISPPARAMS ;
typedef int BSTR ;


 int DISPATCH_PROPERTYPUT ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int assign_ident (TYPE_4__*,int const,int ,int *) ;
 int debugstr_w (int const) ;
 int stack_popn (TYPE_4__*,unsigned int const) ;
 int vbstack_to_dp (TYPE_4__*,unsigned int const,int ,int *) ;

__attribute__((used)) static HRESULT interp_assign_ident(exec_ctx_t *ctx)
{
    const BSTR arg = ctx->instr->arg1.bstr;
    const unsigned arg_cnt = ctx->instr->arg2.uint;
    DISPPARAMS dp;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(arg));

    vbstack_to_dp(ctx, arg_cnt, TRUE, &dp);
    hres = assign_ident(ctx, arg, DISPATCH_PROPERTYPUT, &dp);
    if(FAILED(hres))
        return hres;

    stack_popn(ctx, arg_cnt+1);
    return S_OK;
}
