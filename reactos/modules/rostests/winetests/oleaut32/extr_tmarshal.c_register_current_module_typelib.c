
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ITypeLib ;
typedef int HRESULT ;
typedef int CHAR ;


 int CP_ACP ;
 int GetModuleFileNameA (int *,int *,int) ;
 int ITypeLib_Release (int *) ;
 int LoadTypeLib (int *,int **) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,int) ;
 int RegisterTypeLib (int *,int *,int *) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static HRESULT register_current_module_typelib(void)
{
    WCHAR path[MAX_PATH];
    CHAR pathA[MAX_PATH];
    HRESULT hr;
    ITypeLib *typelib;

    GetModuleFileNameA(((void*)0), pathA, MAX_PATH);
    MultiByteToWideChar(CP_ACP, 0, pathA, -1, path, MAX_PATH);

    hr = LoadTypeLib(path, &typelib);
    if (SUCCEEDED(hr))
    {
        hr = RegisterTypeLib(typelib, path, ((void*)0));
        ITypeLib_Release(typelib);
    }
    return hr;
}
