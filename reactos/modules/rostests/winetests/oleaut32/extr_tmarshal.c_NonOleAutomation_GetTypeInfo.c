
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int IID_INonOleAutomation ;
 int ITypeLib_GetTypeInfoOfGuid (int *,int *,int **) ;
 int ITypeLib_Release (int *) ;
 int LIBID_TestTypelib ;
 int LOCALE_NEUTRAL ;
 int LoadRegTypeLib (int *,int,int,...) ;
 scalar_t__ SUCCEEDED (int ) ;
 int ok_ole_success (int ,int (*) (int *,int *,int **)) ;

__attribute__((used)) static ITypeInfo *NonOleAutomation_GetTypeInfo(void)
{
    ITypeLib *pTypeLib;
    HRESULT hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &pTypeLib);
    ok_ole_success(hr, LoadRegTypeLib);
    if (SUCCEEDED(hr))
    {
        ITypeInfo *pTypeInfo;
        hr = ITypeLib_GetTypeInfoOfGuid(pTypeLib, &IID_INonOleAutomation, &pTypeInfo);
        ok_ole_success(hr, ITypeLib_GetTypeInfoOfGuid);
        ITypeLib_Release(pTypeLib);
        return pTypeInfo;
    }
    return ((void*)0);
}
