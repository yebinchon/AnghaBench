
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * unk; } ;
struct TYPE_5__ {int remote; int dwThreadId; TYPE_1__ u; } ;
typedef TYPE_2__ msi_handle_info ;
typedef int MSIHANDLE ;
typedef int IUnknown ;


 int EnterCriticalSection (int *) ;
 int GetCurrentThreadId () ;
 int IUnknown_AddRef (int *) ;
 int LeaveCriticalSection (int *) ;
 int MSI_handle_cs ;
 int TRACE (char*,int *,int) ;
 int TRUE ;
 int alloc_handle_table_entry () ;
 TYPE_2__* msihandletable ;

MSIHANDLE alloc_msi_remote_handle( IUnknown *unk )
{
    msi_handle_info *entry;
    MSIHANDLE ret;

    EnterCriticalSection( &MSI_handle_cs );

    ret = alloc_handle_table_entry();
    if (ret)
    {
        entry = &msihandletable[ ret - 1 ];
        IUnknown_AddRef( unk );
        entry->u.unk = unk;
        entry->dwThreadId = GetCurrentThreadId();
        entry->remote = TRUE;
    }

    LeaveCriticalSection( &MSI_handle_cs );

    TRACE("%p -> %d\n", unk, ret);

    return ret;
}
