
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int ITypeLib_GetTypeInfoOfGuid (int *,int ,int **) ;
 int ITypeLib_Release (int *) ;
 int LIBID_TestTypelib ;
 int LOCALE_NEUTRAL ;
 int LoadRegTypeLib (int *,int,int,...) ;
 int ok_ole_success (int ,int (*) (int *,int ,int **)) ;

__attribute__((used)) static ITypeInfo *get_type_info(REFIID riid)
{
    ITypeInfo *pTypeInfo;
    ITypeLib *pTypeLib;
    HRESULT hr;

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &pTypeLib);
    ok_ole_success(hr, LoadRegTypeLib);
    if (FAILED(hr))
        return ((void*)0);

    hr = ITypeLib_GetTypeInfoOfGuid(pTypeLib, riid, &pTypeInfo);
    ITypeLib_Release(pTypeLib);
    ok_ole_success(hr, ITypeLib_GetTypeInfoOfGuid);
    if (FAILED(hr))
        return ((void*)0);

    return pTypeInfo;
}
