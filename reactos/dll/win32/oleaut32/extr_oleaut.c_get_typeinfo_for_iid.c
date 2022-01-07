
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int REFIID ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef scalar_t__ HRESULT ;


 int ARRAY_SIZE (scalar_t__*) ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ ITypeLib_GetTypeInfoOfGuid (int *,int ,int **) ;
 int ITypeLib_Release (int *) ;
 scalar_t__ LoadTypeLib (scalar_t__*,int **) ;
 int MAX_PATH ;
 scalar_t__ S_OK ;
 int actctx_get_typelib_module (int ,scalar_t__*,int ) ;
 int debugstr_guid (int ) ;
 scalar_t__ reg_get_typelib_module (int ,scalar_t__*,int ) ;

__attribute__((used)) static HRESULT get_typeinfo_for_iid(REFIID iid, ITypeInfo **typeinfo)
{
    WCHAR module[MAX_PATH];
    ITypeLib *typelib;
    HRESULT hr;

    *typeinfo = ((void*)0);

    module[0] = 0;
    if (!actctx_get_typelib_module(iid, module, ARRAY_SIZE(module)))
    {
        hr = reg_get_typelib_module(iid, module, ARRAY_SIZE(module));
        if (FAILED(hr))
            return hr;
    }

    hr = LoadTypeLib(module, &typelib);
    if (hr != S_OK) {
        ERR("Failed to load typelib for %s, but it should be there.\n", debugstr_guid(iid));
        return hr;
    }

    hr = ITypeLib_GetTypeInfoOfGuid(typelib, iid, typeinfo);
    ITypeLib_Release(typelib);
    if (hr != S_OK)
        ERR("typelib does not contain info for %s\n", debugstr_guid(iid));

    return hr;
}
