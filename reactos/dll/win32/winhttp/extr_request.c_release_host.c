
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* hostname; int connections; int entry; scalar_t__ ref; } ;
typedef TYPE_1__ hostdata_t ;
typedef scalar_t__ LONG ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int assert (int ) ;
 int connection_pool_cs ;
 int heap_free (TYPE_1__*) ;
 int list_empty (int *) ;
 int list_remove (int *) ;

void release_host( hostdata_t *host )
{
    LONG ref;

    EnterCriticalSection( &connection_pool_cs );
    if (!(ref = --host->ref)) list_remove( &host->entry );
    LeaveCriticalSection( &connection_pool_cs );
    if (ref) return;

    assert( list_empty( &host->connections ) );
    heap_free( host->hostname );
    heap_free( host );
}
