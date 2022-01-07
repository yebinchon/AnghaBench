
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float WCHAR ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int LPVOID ;
typedef int IPropertyBag ;
typedef int IMoniker ;
typedef int IEnumMoniker ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ IEnumMoniker_Next (int *,int,int **,int *) ;
 int IID_IPropertyBag ;
 int IMoniker_BindToStorage (int *,int *,int *,int *,int *) ;
 int IMoniker_Release (int *) ;
 int IPropertyBag_Read (int *,float const*,int *,int *) ;
 int IPropertyBag_Release (int *) ;
 int SUCCEEDED (int ) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 int V_BSTR (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int lstrcmpW (int ,float const*) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static BOOL enum_find_filter(const WCHAR *wszFilterName, IEnumMoniker *pEnum)
{
    IMoniker *pMoniker = ((void*)0);
    BOOL found = FALSE;
    ULONG nb;
    HRESULT hr;
    static const WCHAR wszFriendlyName[] = {'F','r','i','e','n','d','l','y','N','a','m','e',0};

    while(!found && IEnumMoniker_Next(pEnum, 1, &pMoniker, &nb) == S_OK)
    {
        IPropertyBag * pPropBagCat = ((void*)0);
        VARIANT var;

        VariantInit(&var);

        hr = IMoniker_BindToStorage(pMoniker, ((void*)0), ((void*)0), &IID_IPropertyBag, (LPVOID*)&pPropBagCat);
        ok(SUCCEEDED(hr), "IMoniker_BindToStorage failed with %x\n", hr);

        hr = IPropertyBag_Read(pPropBagCat, wszFriendlyName, &var, ((void*)0));
        ok(SUCCEEDED(hr), "IPropertyBag_Read failed with %x\n", hr);

        if (!lstrcmpW(V_BSTR(&var), wszFilterName))
            found = TRUE;

        IPropertyBag_Release(pPropBagCat);
        IMoniker_Release(pMoniker);
        VariantClear(&var);
    }

    return found;
}
