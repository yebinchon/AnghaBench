
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int PSTIW ;
typedef int PSTIA ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_NOINTERFACE ;
 int FIXME (char*,int ) ;
 int GetCurrentProcess () ;
 int IID_IStillImageA ;
 int IID_IStillImageW ;
 int IID_IUnknown ;
 scalar_t__ IsEqualGUID (int ,int *) ;
 int IsEqualIID (int ,int *) ;
 int STI_VERSION_FLAG_UNICODE ;
 int STI_VERSION_REAL ;
 int StiCreateInstanceA (int ,int,int *,int *) ;
 int StiCreateInstanceW (int ,int,int *,int *) ;
 int debugstr_guid (int ) ;

__attribute__((used)) static HRESULT sti_create( REFIID riid, IUnknown *pUnkOuter, LPVOID *ppObj )
{
    if (pUnkOuter != ((void*)0) && !IsEqualIID(riid, &IID_IUnknown))
        return CLASS_E_NOAGGREGATION;

    if (IsEqualGUID(riid, &IID_IUnknown))
        return StiCreateInstanceW(GetCurrentProcess(), STI_VERSION_REAL | STI_VERSION_FLAG_UNICODE, (PSTIW*) ppObj, pUnkOuter);
    else if (IsEqualGUID(riid, &IID_IStillImageW))
        return StiCreateInstanceW(GetCurrentProcess(), STI_VERSION_REAL | STI_VERSION_FLAG_UNICODE, (PSTIW*) ppObj, ((void*)0));
    else if (IsEqualGUID(riid, &IID_IStillImageA))
        return StiCreateInstanceA(GetCurrentProcess(), STI_VERSION_REAL, (PSTIA*) ppObj, ((void*)0));
    else
    {
        FIXME("no interface %s\n", debugstr_guid(riid));
        return E_NOINTERFACE;
    }
}
