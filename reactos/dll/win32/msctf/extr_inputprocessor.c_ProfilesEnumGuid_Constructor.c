
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_2__ IEnumGUID_iface; int key; } ;
typedef TYPE_1__ ProfilesEnumGuid ;
typedef TYPE_2__ IEnumGUID ;
typedef int HRESULT ;


 scalar_t__ ERROR_SUCCESS ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int EnumGUIDVtbl ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_LOCAL_MACHINE ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int KEY_READ ;
 int KEY_WRITE ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int *,int ,int,int *,int *,int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int szwSystemTIPKey ;

__attribute__((used)) static HRESULT ProfilesEnumGuid_Constructor(IEnumGUID **ppOut)
{
    ProfilesEnumGuid *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(ProfilesEnumGuid));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->IEnumGUID_iface.lpVtbl= &EnumGUIDVtbl;
    This->refCount = 1;

    if (RegCreateKeyExW(HKEY_LOCAL_MACHINE, szwSystemTIPKey, 0, ((void*)0), 0,
                    KEY_READ | KEY_WRITE, ((void*)0), &This->key, ((void*)0)) != ERROR_SUCCESS)
    {
        HeapFree(GetProcessHeap(), 0, This);
        return E_FAIL;
    }

    *ppOut = &This->IEnumGUID_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
