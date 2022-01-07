
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {TYPE_1__* obj; } ;
struct TYPE_6__ {TYPE_2__ u; scalar_t__ remote; } ;
struct TYPE_4__ {scalar_t__ magic; scalar_t__ type; } ;
typedef void MSIOBJECTHDR ;
typedef size_t MSIHANDLE ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ MSIHANDLE_MAGIC ;
 int MSI_handle_cs ;
 TYPE_3__* msihandletable ;
 size_t msihandletable_size ;
 int msiobj_addref (void*) ;

void *msihandle2msiinfo(MSIHANDLE handle, UINT type)
{
    MSIOBJECTHDR *ret = ((void*)0);

    EnterCriticalSection( &MSI_handle_cs );
    handle--;
    if( handle >= msihandletable_size )
        goto out;
    if( msihandletable[handle].remote)
        goto out;
    if( !msihandletable[handle].u.obj )
        goto out;
    if( msihandletable[handle].u.obj->magic != MSIHANDLE_MAGIC )
        goto out;
    if( type && (msihandletable[handle].u.obj->type != type) )
        goto out;
    ret = msihandletable[handle].u.obj;
    msiobj_addref( ret );

out:
    LeaveCriticalSection( &MSI_handle_cs );

    return ret;
}
