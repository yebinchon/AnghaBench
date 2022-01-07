
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ i_count; TYPE_3__* p_head; } ;
typedef TYPE_2__ subsdelay_heap_t ;
struct TYPE_13__ {int b_update_ephemer; struct TYPE_13__* p_next; TYPE_1__* p_source; } ;
typedef TYPE_3__ subsdelay_heap_entry_t ;
struct TYPE_14__ {scalar_t__ i_start; } ;
typedef TYPE_4__ subpicture_t ;
typedef int filter_t ;
struct TYPE_11__ {scalar_t__ i_start; scalar_t__ i_stop; } ;


 scalar_t__ SUBSDELAY_MAX_ENTRIES ;
 TYPE_3__* SubsdelayEntryCreate (TYPE_4__*,int *) ;
 int SubsdelayRebuildList (TYPE_2__*) ;

__attribute__((used)) static subsdelay_heap_entry_t *SubsdelayHeapPush( subsdelay_heap_t *p_heap, subpicture_t *p_subpic, filter_t *p_filter )
{
    subsdelay_heap_entry_t *p_last, *p_new_entry;

    if( p_heap->i_count >= SUBSDELAY_MAX_ENTRIES )
    {
        return ((void*)0);
    }

    p_new_entry = SubsdelayEntryCreate( p_subpic, p_filter );

    if( !p_new_entry )
    {
        return ((void*)0);
    }


    p_last = ((void*)0);

    for( subsdelay_heap_entry_t *p_entry = p_heap->p_head; p_entry != ((void*)0);
         p_entry = p_entry->p_next )
    {
        if( p_entry->p_source->i_start > p_subpic->i_start )
        {

            break;
        }

        p_last = p_entry;
    }

    if( p_last )
    {
        p_new_entry->p_next = p_last->p_next;
        p_last->p_next = p_new_entry;


        if( p_last->b_update_ephemer )
        {


            p_last->p_source->i_stop = p_new_entry->p_source->i_start;
            p_last->b_update_ephemer = 0;
        }
    }
    else
    {
        p_new_entry->p_next = p_heap->p_head;
        p_heap->p_head = p_new_entry;
    }




    SubsdelayRebuildList( p_heap );

    return p_new_entry;
}
