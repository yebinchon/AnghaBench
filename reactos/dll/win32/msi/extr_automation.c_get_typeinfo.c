
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t tid_t ;
typedef char WCHAR ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int ERR (char*,...) ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_Release (int *) ;
 int ITypeLib_GetTypeInfoOfGuid (int ,int ,int **) ;
 int ITypeLib_Release (int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int LIBID_WindowsInstaller ;
 int LOCALE_NEUTRAL ;
 int LoadRegTypeLib (int *,int,int ,int ,int **) ;
 int LoadTypeLib (char const*,int **) ;
 int S_OK ;
 int debugstr_guid (int ) ;
 int get_riid_from_tid (size_t) ;
 int ** typeinfos ;
 int typelib ;

HRESULT get_typeinfo(tid_t tid, ITypeInfo **typeinfo)
{
    HRESULT hr;

    if (!typelib)
    {
        ITypeLib *lib;

        hr = LoadRegTypeLib(&LIBID_WindowsInstaller, 1, 0, LOCALE_NEUTRAL, &lib);
        if (FAILED(hr)) {
            static const WCHAR msiserverW[] = {'m','s','i','s','e','r','v','e','r','.','t','l','b',0};
            hr = LoadTypeLib(msiserverW, &lib);
            if (FAILED(hr)) {
                ERR("Could not load msiserver.tlb\n");
                return hr;
            }
        }

        if (InterlockedCompareExchangePointer((void**)&typelib, lib, ((void*)0)))
            ITypeLib_Release(lib);
    }

    if (!typeinfos[tid])
    {
        ITypeInfo *ti;

        hr = ITypeLib_GetTypeInfoOfGuid(typelib, get_riid_from_tid(tid), &ti);
        if (FAILED(hr)) {
            ERR("Could not load ITypeInfo for %s\n", debugstr_guid(get_riid_from_tid(tid)));
            return hr;
        }

        if(InterlockedCompareExchangePointer((void**)(typeinfos+tid), ti, ((void*)0)))
            ITypeInfo_Release(ti);
    }

    *typeinfo = typeinfos[tid];
    return S_OK;
}
