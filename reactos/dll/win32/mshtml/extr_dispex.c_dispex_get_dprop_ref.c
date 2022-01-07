
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int var; } ;
typedef TYPE_1__ dynamic_prop_t ;
typedef int WCHAR ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int DispatchEx ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int fdexNameEnsure ;
 int get_dynamic_prop (int *,int const*,int ,TYPE_1__**) ;

HRESULT dispex_get_dprop_ref(DispatchEx *This, const WCHAR *name, BOOL alloc, VARIANT **ret)
{
    dynamic_prop_t *prop;
    HRESULT hres;

    hres = get_dynamic_prop(This, name, alloc ? fdexNameEnsure : 0, &prop);
    if(FAILED(hres))
        return hres;

    *ret = &prop->var;
    return S_OK;
}
