
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int lock; TYPE_4__* p_head; } ;
typedef TYPE_3__ subsdelay_heap_t ;
struct TYPE_11__ {int * p_filter; TYPE_2__* p_source; TYPE_1__* p_subpic; struct TYPE_11__* p_next; } ;
typedef TYPE_4__ subsdelay_heap_entry_t ;
struct TYPE_9__ {int i_stop; } ;
struct TYPE_8__ {int i_stop; } ;


 int SubsdelayHeapLock (TYPE_3__*) ;
 int SubsdelayHeapUnlock (TYPE_3__*) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void SubsdelayHeapDestroy( subsdelay_heap_t *p_heap )
{
    SubsdelayHeapLock( p_heap );

    for( subsdelay_heap_entry_t *p_entry = p_heap->p_head;
         p_entry != ((void*)0); p_entry = p_entry->p_next )
    {
        p_entry->p_subpic->i_stop = p_entry->p_source->i_stop;

        p_entry->p_filter = ((void*)0);
    }

    SubsdelayHeapUnlock( p_heap );

    vlc_mutex_destroy( &p_heap->lock );
}
