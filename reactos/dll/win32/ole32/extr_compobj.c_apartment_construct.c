
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tid; int refs; int oidc; int multi_threaded; int oxid; int entry; int cs; int remunk_exported; scalar_t__ ipidc; int loaded_dlls; int stubmgrs; int proxies; } ;
typedef int OXID ;
typedef int DWORD ;
typedef TYPE_1__ APARTMENT ;


 int COINIT_APARTMENTTHREADED ;
 int DEBUG_SET_CRITSEC_NAME (int *,char*) ;
 int FALSE ;
 scalar_t__ GetCurrentProcessId () ;
 int GetCurrentThreadId () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int InitializeCriticalSection (int *) ;
 int TRACE (char*,int) ;
 int apts ;
 int list_add_head (int *,int *) ;
 int list_init (int *) ;
 int wine_dbgstr_longlong (int) ;

__attribute__((used)) static APARTMENT *apartment_construct(DWORD model)
{
    APARTMENT *apt;

    TRACE("creating new apartment, model=%d\n", model);

    apt = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*apt));
    apt->tid = GetCurrentThreadId();

    list_init(&apt->proxies);
    list_init(&apt->stubmgrs);
    list_init(&apt->loaded_dlls);
    apt->ipidc = 0;
    apt->refs = 1;
    apt->remunk_exported = FALSE;
    apt->oidc = 1;
    InitializeCriticalSection(&apt->cs);
    DEBUG_SET_CRITSEC_NAME(&apt->cs, "apartment");

    apt->multi_threaded = !(model & COINIT_APARTMENTTHREADED);

    if (apt->multi_threaded)
    {

        apt->oxid = ((OXID)GetCurrentProcessId() << 32) | 0xcafe;
    }
    else
    {

        apt->oxid = ((OXID)GetCurrentProcessId() << 32) | GetCurrentThreadId();
    }

    TRACE("Created apartment on OXID %s\n", wine_dbgstr_longlong(apt->oxid));

    list_add_head(&apts, &apt->entry);

    return apt;
}
