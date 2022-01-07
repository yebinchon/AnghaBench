
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * obj; } ;
struct TYPE_5__ {int remote; int dwThreadId; TYPE_1__ u; } ;
typedef TYPE_2__ msi_handle_info ;
typedef int MSIOBJECTHDR ;
typedef int MSIHANDLE ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 int GetCurrentThreadId () ;
 int LeaveCriticalSection (int *) ;
 int MSI_handle_cs ;
 int TRACE (char*,int *,int) ;
 int alloc_handle_table_entry () ;
 TYPE_2__* msihandletable ;
 int msiobj_addref (int *) ;

MSIHANDLE alloc_msihandle( MSIOBJECTHDR *obj )
{
    msi_handle_info *entry;
    MSIHANDLE ret;

    EnterCriticalSection( &MSI_handle_cs );

    ret = alloc_handle_table_entry();
    if (ret)
    {
        entry = &msihandletable[ ret - 1 ];
        msiobj_addref( obj );
        entry->u.obj = obj;
        entry->dwThreadId = GetCurrentThreadId();
        entry->remote = FALSE;
    }

    LeaveCriticalSection( &MSI_handle_cs );

    TRACE("%p -> %d\n", obj, ret );

    return ret;
}
