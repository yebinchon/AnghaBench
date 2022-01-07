
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int refCount; int tipkey; int catmgr; int langid; TYPE_1__ IEnumTfLanguageProfiles_iface; } ;
typedef int LANGID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_2__ EnumTfLanguageProfiles ;


 int CategoryMgr_Constructor (int *,int **) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int EnumTfLanguageProfilesVtbl ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_LOCAL_MACHINE ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int KEY_READ ;
 int KEY_WRITE ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int *,int ,int,int *,int *,int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int szwSystemTIPKey ;

__attribute__((used)) static HRESULT EnumTfLanguageProfiles_Constructor(LANGID langid, EnumTfLanguageProfiles **out)
{
    HRESULT hr;
    EnumTfLanguageProfiles *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(EnumTfLanguageProfiles));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->IEnumTfLanguageProfiles_iface.lpVtbl= &EnumTfLanguageProfilesVtbl;
    This->refCount = 1;
    This->langid = langid;

    hr = CategoryMgr_Constructor(((void*)0),(IUnknown**)&This->catmgr);
    if (FAILED(hr))
    {
        HeapFree(GetProcessHeap(),0,This);
        return hr;
    }

    if (RegCreateKeyExW(HKEY_LOCAL_MACHINE, szwSystemTIPKey, 0, ((void*)0), 0,
                    KEY_READ | KEY_WRITE, ((void*)0), &This->tipkey, ((void*)0)) != ERROR_SUCCESS)
    {
        HeapFree(GetProcessHeap(), 0, This);
        return E_FAIL;
    }

    *out = This;
    TRACE("returning %p\n", *out);
    return S_OK;
}
