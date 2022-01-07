
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pGetPropValue ) (int *,int const*,int *) ;} ;
typedef int PROPVARIANT ;
typedef int PROPERTYKEY ;
typedef int HRESULT ;
typedef int GUID ;
typedef int EDataFlow ;


 int E_NOTIMPL ;
 int MMDevice_SetPropValue (int *,int const,int const*,int *) ;
 int PropVariantClear (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 TYPE_1__ drvs ;
 int stub1 (int *,int const*,int *) ;

__attribute__((used)) static HRESULT set_driver_prop_value(GUID *id, const EDataFlow flow, const PROPERTYKEY *prop)
{
    HRESULT hr;
    PROPVARIANT pv;

    if (!drvs.pGetPropValue)
        return E_NOTIMPL;

    hr = drvs.pGetPropValue(id, prop, &pv);

    if (SUCCEEDED(hr))
    {
        MMDevice_SetPropValue(id, flow, prop, &pv);
        PropVariantClear(&pv);
    }

    return hr;
}
