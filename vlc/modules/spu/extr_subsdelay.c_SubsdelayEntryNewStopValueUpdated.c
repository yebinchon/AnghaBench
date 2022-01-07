
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_new_stop; TYPE_1__* p_subpic; int b_update_stop; } ;
typedef TYPE_2__ subsdelay_heap_entry_t ;
struct TYPE_4__ {scalar_t__ i_stop; } ;


 scalar_t__ VLC_TICK_FROM_MS (int) ;

__attribute__((used)) static void SubsdelayEntryNewStopValueUpdated( subsdelay_heap_entry_t *p_entry )
{
    if( !p_entry->b_update_stop )
    {
        p_entry->p_subpic->i_stop = p_entry->i_new_stop - VLC_TICK_FROM_MS(100);
    }
}
