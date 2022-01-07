
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int WORD ;
typedef int VARIANT ;
struct TYPE_3__ {unsigned int cNamedArgs; scalar_t__* rgdispidNamedArgs; int * rgvarg; } ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;
typedef int BOOL ;


 int DISPATCH_PROPERTYPUT ;
 int DISPATCH_PROPERTYPUTREF ;
 scalar_t__ DISPID_PROPERTYPUT ;
 int DISP_E_EXCEPTION ;
 int DISP_E_PARAMNOTOPTIONAL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int S_OK ;
 int TRUE ;
 int VT_BYREF ;
 int VT_DISPATCH ;
 int VT_VARIANT ;
 int V_DISPATCH (int *) ;
 int * V_VARIANTREF (int *) ;
 int V_VT (int *) ;
 int WARN (char*,...) ;
 int debugstr_variant (int *) ;
 int get_disp_value (int *,int ,int *) ;

__attribute__((used)) static HRESULT get_propput_arg(script_ctx_t *ctx, const DISPPARAMS *dp, WORD flags, VARIANT *v, BOOL *is_owned)
{
    unsigned i;

    for(i=0; i < dp->cNamedArgs; i++) {
        if(dp->rgdispidNamedArgs[i] == DISPID_PROPERTYPUT)
            break;
    }
    if(i == dp->cNamedArgs) {
        WARN("no value to set\n");
        return DISP_E_PARAMNOTOPTIONAL;
    }

    *v = dp->rgvarg[i];
    if(V_VT(v) == (VT_VARIANT|VT_BYREF))
        *v = *V_VARIANTREF(v);
    *is_owned = FALSE;

    if(V_VT(v) == VT_DISPATCH) {
        if(!(flags & DISPATCH_PROPERTYPUTREF)) {
            HRESULT hres;

            hres = get_disp_value(ctx, V_DISPATCH(v), v);
            if(FAILED(hres))
                return hres;

            *is_owned = TRUE;
        }
    }else if(!(flags & DISPATCH_PROPERTYPUT)) {
        WARN("%s can't be assigned without DISPATCH_PROPERTYPUT flag\n", debugstr_variant(v));
        return DISP_E_EXCEPTION;
    }

    return S_OK;
}
