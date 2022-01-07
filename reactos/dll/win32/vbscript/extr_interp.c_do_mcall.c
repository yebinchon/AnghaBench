
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int script; TYPE_3__* instr; } ;
typedef TYPE_4__ exec_ctx_t ;
typedef int VARIANT ;
struct TYPE_9__ {unsigned int uint; } ;
struct TYPE_10__ {int bstr; } ;
struct TYPE_11__ {TYPE_1__ arg2; TYPE_2__ arg1; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DISPPARAMS ;
typedef int DISPID ;
typedef int BSTR ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int IDispatch_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int VBDISP_CALLGET ;
 int disp_call (int ,int *,int ,int *,int *) ;
 int disp_get_id (int *,int const,int ,int ,int *) ;
 int stack_pop_disp (TYPE_4__*,int **) ;
 int stack_popn (TYPE_4__*,unsigned int const) ;
 int vbstack_to_dp (TYPE_4__*,unsigned int const,int ,int *) ;

__attribute__((used)) static HRESULT do_mcall(exec_ctx_t *ctx, VARIANT *res)
{
    const BSTR identifier = ctx->instr->arg1.bstr;
    const unsigned arg_cnt = ctx->instr->arg2.uint;
    IDispatch *obj;
    DISPPARAMS dp;
    DISPID id;
    HRESULT hres;

    hres = stack_pop_disp(ctx, &obj);
    if(FAILED(hres))
        return hres;

    if(!obj) {
        FIXME("NULL obj\n");
        return E_FAIL;
    }

    vbstack_to_dp(ctx, arg_cnt, FALSE, &dp);

    hres = disp_get_id(obj, identifier, VBDISP_CALLGET, FALSE, &id);
    if(SUCCEEDED(hres))
        hres = disp_call(ctx->script, obj, id, &dp, res);
    IDispatch_Release(obj);
    if(FAILED(hres))
        return hres;

    stack_popn(ctx, arg_cnt);
    return S_OK;
}
