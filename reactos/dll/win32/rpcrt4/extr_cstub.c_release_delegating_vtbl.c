
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ref; } ;
typedef TYPE_1__ ref_counted_vtbl ;
typedef int IUnknownVtbl ;
typedef int DWORD ;


 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,...) ;
 TYPE_1__* current_vtbl ;
 int delegating_vtbl_section ;

void release_delegating_vtbl(IUnknownVtbl *vtbl)
{
    ref_counted_vtbl *table = (ref_counted_vtbl*)((DWORD *)vtbl - 1);

    EnterCriticalSection(&delegating_vtbl_section);
    table->ref--;
    TRACE("ref now %d\n", table->ref);
    if(table->ref == 0 && table != current_vtbl)
    {
        TRACE("... and we're not current so free'ing\n");
        HeapFree(GetProcessHeap(), 0, table);
    }
    LeaveCriticalSection(&delegating_vtbl_section);
}
