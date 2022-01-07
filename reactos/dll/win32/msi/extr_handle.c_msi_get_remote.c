
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * unk; } ;
struct TYPE_4__ {TYPE_1__ u; int remote; } ;
typedef size_t MSIHANDLE ;
typedef int IUnknown ;


 int EnterCriticalSection (int *) ;
 int IUnknown_AddRef (int *) ;
 int LeaveCriticalSection (int *) ;
 int MSI_handle_cs ;
 TYPE_2__* msihandletable ;
 size_t msihandletable_size ;

IUnknown *msi_get_remote( MSIHANDLE handle )
{
    IUnknown *unk = ((void*)0);

    EnterCriticalSection( &MSI_handle_cs );
    handle--;
    if( handle>=msihandletable_size )
        goto out;
    if( !msihandletable[handle].remote)
        goto out;
    unk = msihandletable[handle].u.unk;
    if( unk )
        IUnknown_AddRef( unk );

out:
    LeaveCriticalSection( &MSI_handle_cs );

    return unk;
}
