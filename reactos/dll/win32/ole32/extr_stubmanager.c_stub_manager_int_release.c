
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stub_manager {int entry; scalar_t__ refs; TYPE_1__* apt; } ;
typedef scalar_t__ ULONG ;
struct TYPE_2__ {int cs; } ;
typedef TYPE_1__ APARTMENT ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,scalar_t__) ;
 int list_remove (int *) ;
 int stub_manager_delete (struct stub_manager*) ;

ULONG stub_manager_int_release(struct stub_manager *This)
{
    ULONG refs;
    APARTMENT *apt = This->apt;

    EnterCriticalSection(&apt->cs);
    refs = --This->refs;

    TRACE("after %d\n", refs);


    if (!refs)
        list_remove(&This->entry);

    LeaveCriticalSection(&apt->cs);


    if (!refs)
        stub_manager_delete(This);

    return refs;
}
