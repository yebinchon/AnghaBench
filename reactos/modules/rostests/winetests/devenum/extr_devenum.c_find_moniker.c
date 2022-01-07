
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMoniker ;
typedef int IEnumMoniker ;
typedef int ICreateDevEnum ;
typedef int GUID ;
typedef scalar_t__ BOOL ;


 int CLSCTX_INPROC ;
 int CLSID_SystemDeviceEnum ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FALSE ;
 int ICreateDevEnum_CreateClassEnumerator (int *,int const*,int **,int ) ;
 int ICreateDevEnum_Release (int *) ;
 scalar_t__ IEnumMoniker_Next (int *,int,int **,int *) ;
 int IEnumMoniker_Release (int *) ;
 int IID_ICreateDevEnum ;
 scalar_t__ IMoniker_IsEqual (int *,int *) ;
 int IMoniker_Release (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL find_moniker(const GUID *class, IMoniker *needle)
{
    ICreateDevEnum *devenum;
    IEnumMoniker *enum_mon;
    IMoniker *mon;
    BOOL found = FALSE;

    CoCreateInstance(&CLSID_SystemDeviceEnum, ((void*)0), CLSCTX_INPROC, &IID_ICreateDevEnum, (void **)&devenum);
    ICreateDevEnum_CreateClassEnumerator(devenum, class, &enum_mon, 0);
    while (!found && IEnumMoniker_Next(enum_mon, 1, &mon, ((void*)0)) == S_OK)
    {
        if (IMoniker_IsEqual(mon, needle) == S_OK)
            found = TRUE;

        IMoniker_Release(mon);
    }

    IEnumMoniker_Release(enum_mon);
    ICreateDevEnum_Release(devenum);
    return found;
}
