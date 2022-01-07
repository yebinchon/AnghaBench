
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t tid; int prop_vt; int put_vtbl_off; } ;
typedef TYPE_1__ func_info_t ;
typedef int VARIANT ;
struct TYPE_9__ {int cArgs; int cNamedArgs; scalar_t__* rgdispidNamedArgs; int * rgvarg; } ;
struct TYPE_8__ {int outer; } ;
typedef int IUnknown ;
typedef int IServiceProvider ;
typedef int HRESULT ;
typedef TYPE_2__ DispatchEx ;
typedef TYPE_3__ DISPPARAMS ;


 int BUILTIN_TYPES_SWITCH ;
 scalar_t__ DISPID_PROPERTYPUT ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IUnknown_QueryInterface (int ,int ,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int VT_VARIANT ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int change_type (int *,int *,int ,int *) ;
 int * tid_ids ;

__attribute__((used)) static HRESULT builtin_propput(DispatchEx *This, func_info_t *func, DISPPARAMS *dp, IServiceProvider *caller)
{
    VARIANT *v, tmpv;
    IUnknown *iface;
    HRESULT hres;

    if(dp->cArgs != 1 || (dp->cNamedArgs == 1 && *dp->rgdispidNamedArgs != DISPID_PROPERTYPUT)
            || dp->cNamedArgs > 1) {
        FIXME("invalid args\n");
        return E_INVALIDARG;
    }

    if(!func->put_vtbl_off) {
        FIXME("No setter\n");
        return E_FAIL;
    }

    v = dp->rgvarg;
    if(func->prop_vt != VT_VARIANT && V_VT(v) != func->prop_vt) {
        hres = change_type(&tmpv, v, func->prop_vt, caller);
        if(FAILED(hres))
            return hres;
        v = &tmpv;
    }

    hres = IUnknown_QueryInterface(This->outer, tid_ids[func->tid], (void**)&iface);
    if(SUCCEEDED(hres)) {
        switch(func->prop_vt) {




        BUILTIN_TYPES_SWITCH;

        default:
            FIXME("Unimplemented vt %d\n", func->prop_vt);
            hres = E_NOTIMPL;
        }

        IUnknown_Release(iface);
    }

    if(v == &tmpv)
        VariantClear(v);
    return hres;
}
