
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int script; } ;
typedef TYPE_1__ exec_ctx_t ;
typedef int WORD ;
typedef int VARIANT ;
typedef int HRESULT ;


 int DISPATCH_PROPERTYPUTREF ;
 scalar_t__ FAILED (int ) ;
 int IDispatch_Release (int ) ;
 int S_OK ;
 scalar_t__ VT_DISPATCH ;
 int V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantCopyInd (int *,int *) ;
 int get_disp_value (int ,int ,int *) ;

__attribute__((used)) static HRESULT assign_value(exec_ctx_t *ctx, VARIANT *dst, VARIANT *src, WORD flags)
{
    HRESULT hres;

    hres = VariantCopyInd(dst, src);
    if(FAILED(hres))
        return hres;

    if(V_VT(dst) == VT_DISPATCH && !(flags & DISPATCH_PROPERTYPUTREF)) {
        VARIANT value;

        hres = get_disp_value(ctx->script, V_DISPATCH(dst), &value);
        IDispatch_Release(V_DISPATCH(dst));
        if(FAILED(hres))
            return hres;

        *dst = value;
    }

    return S_OK;
}
