
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* instr; } ;
typedef TYPE_4__ exec_ctx_t ;
struct TYPE_10__ {int bstr; } ;
struct TYPE_11__ {unsigned int uint; } ;
struct TYPE_12__ {TYPE_1__ arg1; TYPE_2__ arg2; } ;
typedef int HRESULT ;
typedef int DISPPARAMS ;
typedef int BSTR ;


 int DISPATCH_PROPERTYPUTREF ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int assign_ident (TYPE_4__*,int ,int ,int *) ;
 int debugstr_w (int const) ;
 int stack_assume_disp (TYPE_4__*,int ,int *) ;
 int stack_popn (TYPE_4__*,int) ;
 int vbstack_to_dp (TYPE_4__*,int ,int ,int *) ;

__attribute__((used)) static HRESULT interp_set_ident(exec_ctx_t *ctx)
{
    const BSTR arg = ctx->instr->arg1.bstr;
    const unsigned arg_cnt = ctx->instr->arg2.uint;
    DISPPARAMS dp;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(arg));

    if(arg_cnt) {
        FIXME("arguments not supported\n");
        return E_NOTIMPL;
    }

    hres = stack_assume_disp(ctx, 0, ((void*)0));
    if(FAILED(hres))
        return hres;

    vbstack_to_dp(ctx, 0, TRUE, &dp);
    hres = assign_ident(ctx, ctx->instr->arg1.bstr, DISPATCH_PROPERTYPUTREF, &dp);
    if(FAILED(hres))
        return hres;

    stack_popn(ctx, 1);
    return S_OK;
}
