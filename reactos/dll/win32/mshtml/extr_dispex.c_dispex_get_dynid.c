
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dynamic_prop_t ;
typedef int WCHAR ;
struct TYPE_6__ {TYPE_1__* dynamic_data; } ;
struct TYPE_5__ {int * props; } ;
typedef int HRESULT ;
typedef TYPE_2__ DispatchEx ;
typedef int DISPID ;


 int DISPID_DYNPROP_0 ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int fdexNameEnsure ;
 int get_dynamic_prop (TYPE_2__*,int const*,int ,int **) ;

HRESULT dispex_get_dynid(DispatchEx *This, const WCHAR *name, DISPID *id)
{
    dynamic_prop_t *prop;
    HRESULT hres;

    hres = get_dynamic_prop(This, name, fdexNameEnsure, &prop);
    if(FAILED(hres))
        return hres;

    *id = DISPID_DYNPROP_0 + (prop - This->dynamic_data->props);
    return S_OK;
}
