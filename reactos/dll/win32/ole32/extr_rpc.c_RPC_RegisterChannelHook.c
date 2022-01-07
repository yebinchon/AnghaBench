
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_hook_entry {int entry; int * hook; int id; } ;
typedef int * REFGUID ;
typedef int IChannelHook ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 struct channel_hook_entry* HeapAlloc (int ,int ,int) ;
 int IChannelHook_AddRef (int *) ;
 int LeaveCriticalSection (int *) ;
 int S_OK ;
 int TRACE (char*,int ,int *) ;
 int channel_hooks ;
 int csChannelHook ;
 int debugstr_guid (int *) ;
 int list_add_tail (int *,int *) ;

HRESULT RPC_RegisterChannelHook(REFGUID rguid, IChannelHook *hook)
{
    struct channel_hook_entry *entry;

    TRACE("(%s, %p)\n", debugstr_guid(rguid), hook);

    entry = HeapAlloc(GetProcessHeap(), 0, sizeof(*entry));
    if (!entry)
        return E_OUTOFMEMORY;

    entry->id = *rguid;
    entry->hook = hook;
    IChannelHook_AddRef(hook);

    EnterCriticalSection(&csChannelHook);
    list_add_tail(&channel_hooks, &entry->entry);
    LeaveCriticalSection(&csChannelHook);

    return S_OK;
}
