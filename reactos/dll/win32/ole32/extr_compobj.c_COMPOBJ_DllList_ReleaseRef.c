
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* library_name; int library; int entry; int refs; } ;
typedef TYPE_1__ OpenDll ;
typedef scalar_t__ BOOL ;


 int EnterCriticalSection (int *) ;
 int FreeLibrary (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int InterlockedDecrement (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int ) ;
 int csOpenDllList ;
 int list_remove (int *) ;

__attribute__((used)) static void COMPOBJ_DllList_ReleaseRef(OpenDll *entry, BOOL free_entry)
{
    if (!InterlockedDecrement(&entry->refs) && free_entry)
    {
        EnterCriticalSection(&csOpenDllList);
        list_remove(&entry->entry);
        LeaveCriticalSection(&csOpenDllList);

        TRACE("freeing %p\n", entry->library);
        FreeLibrary(entry->library);

        HeapFree(GetProcessHeap(), 0, entry->library_name);
        HeapFree(GetProcessHeap(), 0, entry);
    }
}
