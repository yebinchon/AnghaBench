
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
struct TYPE_9__ {unsigned int uint; } ;
struct TYPE_10__ {int bstr; } ;
struct TYPE_11__ {TYPE_1__ arg2; TYPE_2__ arg1; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DISPPARAMS ;
typedef int DISPID ;
typedef int BSTR ;


 int DISPATCH_PROPERTYPUT ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int VBDISP_LET ;
 int debugstr_w (int ) ;
 int disp_get_id (int *,int ,int ,int ,int *) ;
 int disp_propput (int ,int *,int ,int ,int *) ;
 int stack_assume_disp (TYPE_4__*,unsigned int const,int **) ;
 int stack_popn (TYPE_4__*,unsigned int const) ;
 int vbstack_to_dp (TYPE_4__*,unsigned int const,int ,int *) ;

__attribute__((used)) static HRESULT interp_assign_member(exec_ctx_t *ctx)
{
    BSTR identifier = ctx->instr->arg1.bstr;
    const unsigned arg_cnt = ctx->instr->arg2.uint;
    IDispatch *obj;
    DISPPARAMS dp;
    DISPID id;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(identifier));

    hres = stack_assume_disp(ctx, arg_cnt+1, &obj);
    if(FAILED(hres))
        return hres;

    if(!obj) {
        FIXME("NULL obj\n");
        return E_FAIL;
    }

    hres = disp_get_id(obj, identifier, VBDISP_LET, FALSE, &id);
    if(SUCCEEDED(hres)) {
        vbstack_to_dp(ctx, arg_cnt, TRUE, &dp);
        hres = disp_propput(ctx->script, obj, id, DISPATCH_PROPERTYPUT, &dp);
    }
    if(FAILED(hres))
        return hres;

    stack_popn(ctx, arg_cnt+2);
    return S_OK;
}
