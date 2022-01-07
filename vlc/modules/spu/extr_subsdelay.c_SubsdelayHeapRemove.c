
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_head; } ;
typedef TYPE_1__ subsdelay_heap_t ;
struct TYPE_7__ {int * p_filter; struct TYPE_7__* p_next; } ;
typedef TYPE_2__ subsdelay_heap_entry_t ;


 int SubsdelayRebuildList (TYPE_1__*) ;

__attribute__((used)) static void SubsdelayHeapRemove( subsdelay_heap_t *p_heap, subsdelay_heap_entry_t *p_entry )
{
    subsdelay_heap_entry_t *p_prev;

    p_prev = ((void*)0);

    for( subsdelay_heap_entry_t *p_curr = p_heap->p_head; p_curr != ((void*)0);
         p_curr = p_curr->p_next )
    {
        if( p_curr == p_entry )
        {
            break;
        }

        p_prev = p_curr;
    }

    if( p_prev )
    {
        p_prev->p_next = p_entry->p_next;
    }
    else
    {
        p_heap->p_head = p_entry->p_next;
    }

    p_entry->p_filter = ((void*)0);

    SubsdelayRebuildList( p_heap );
}
