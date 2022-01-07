
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exec_ctx_t ;
typedef int VARIANT ;
typedef int IDispatch ;
typedef int HRESULT ;


 int E_FAIL ;
 int FIXME (char*,int ) ;
 int IDispatch_AddRef (int *) ;
 int S_OK ;
 int VT_BYREF ;
 int VT_DISPATCH ;
 int VT_VARIANT ;
 int * V_BYREF (int *) ;
 int * V_DISPATCH (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int debugstr_variant (int *) ;
 int * stack_pop (int *) ;

__attribute__((used)) static HRESULT stack_pop_disp(exec_ctx_t *ctx, IDispatch **ret)
{
    VARIANT *v = stack_pop(ctx);

    if(V_VT(v) == VT_DISPATCH) {
        *ret = V_DISPATCH(v);
        return S_OK;
    }

    if(V_VT(v) != (VT_VARIANT|VT_BYREF)) {
        FIXME("not supported type: %s\n", debugstr_variant(v));
        VariantClear(v);
        return E_FAIL;
    }

    v = V_BYREF(v);
    if(V_VT(v) != VT_DISPATCH) {
        FIXME("not disp %s\n", debugstr_variant(v));
        return E_FAIL;
    }

    if(V_DISPATCH(v))
        IDispatch_AddRef(V_DISPATCH(v));
    *ret = V_DISPATCH(v);
    return S_OK;
}
