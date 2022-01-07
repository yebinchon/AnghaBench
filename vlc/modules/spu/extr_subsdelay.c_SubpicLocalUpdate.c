
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int subsdelay_heap_t ;
struct TYPE_18__ {int b_check_empty; int b_update_stop; int b_update_position; int i_last_region_y; int i_last_region_align; int i_last_region_x; scalar_t__ b_last_region_saved; TYPE_2__* p_source; scalar_t__ i_new_stop; int b_update_ephemer; TYPE_6__* p_filter; } ;
typedef TYPE_4__ subsdelay_heap_entry_t ;
struct TYPE_15__ {TYPE_4__* p_sys; } ;
struct TYPE_19__ {int b_ephemer; int b_absolute; TYPE_3__* p_region; int i_alpha; int i_start; int i_stop; TYPE_1__ updater; } ;
typedef TYPE_5__ subpicture_t ;
struct TYPE_20__ {TYPE_7__* p_sys; } ;
typedef TYPE_6__ filter_t ;
struct TYPE_21__ {int heap; } ;
typedef TYPE_7__ filter_sys_t ;
struct TYPE_17__ {int i_y; int i_align; int i_x; int p_text; } ;
struct TYPE_16__ {int i_alpha; scalar_t__ i_start; } ;


 int SUBPICTURE_ALIGN_BOTTOM ;
 int SUBPICTURE_ALIGN_MASK ;
 int SubsdelayCalculateAlpha (TYPE_6__*,int,int ) ;
 int SubsdelayEnforceDelayRules (TYPE_6__*) ;
 scalar_t__ SubsdelayEstimateDelay (TYPE_6__*,TYPE_4__*) ;
 int SubsdelayHeapCountOverlap (int *,TYPE_4__*,int ) ;
 int SubsdelayHeapLock (int *) ;
 int SubsdelayHeapRemove (int *,TYPE_4__*) ;
 int SubsdelayHeapUnlock (int *) ;
 scalar_t__ SubsdelayIsTextEmpty (int ) ;

__attribute__((used)) static void SubpicLocalUpdate( subpicture_t* p_subpic, vlc_tick_t i_ts )
{
    subsdelay_heap_entry_t *p_entry;
    subsdelay_heap_t *p_heap;
    filter_t *p_filter;

    int i_overlapping;

    p_entry = p_subpic->updater.p_sys;
    if( !p_entry || !p_entry->p_filter )
    {
        return;
    }

    p_filter = p_entry->p_filter;
    filter_sys_t *p_sys = p_filter->p_sys;
    p_heap = &p_sys->heap;

    SubsdelayHeapLock( p_heap );

    if( p_entry->b_check_empty && p_subpic->p_region )
    {

        if( SubsdelayIsTextEmpty( p_subpic->p_region->p_text ) )
        {


            p_subpic->b_ephemer = 0;
            p_subpic->i_stop = p_subpic->i_start;

            SubsdelayHeapRemove( p_heap, p_entry );

            SubsdelayHeapUnlock( p_heap );

            return;
        }

        p_entry->b_check_empty = 0;
    }

    if( p_entry->b_update_stop && !p_entry->b_update_ephemer )
    {
        p_entry->i_new_stop = p_entry->p_source->i_start + SubsdelayEstimateDelay( p_filter, p_entry );
        p_entry->b_update_stop = 0;

        SubsdelayEnforceDelayRules( p_filter );
    }

    i_overlapping = SubsdelayHeapCountOverlap( p_heap, p_entry, i_ts );

    p_subpic->i_alpha = SubsdelayCalculateAlpha( p_filter, i_overlapping, p_entry->p_source->i_alpha );

    if( p_entry->b_update_position )
    {
        p_subpic->b_absolute = 0;

        if( p_subpic->p_region )
        {
            p_subpic->p_region->i_x = 0;
            p_subpic->p_region->i_y = 10;
            p_subpic->p_region->i_align = ( p_subpic->p_region->i_align & ( ~SUBPICTURE_ALIGN_MASK ) )
                    | SUBPICTURE_ALIGN_BOTTOM;
        }

        p_entry->b_update_position = 0;
    }
    else if( p_entry->b_last_region_saved )
    {
        p_subpic->b_absolute = 1;

        if( p_subpic->p_region )
        {
            p_subpic->p_region->i_x = p_entry->i_last_region_x;
            p_subpic->p_region->i_y = p_entry->i_last_region_y;
            p_subpic->p_region->i_align = p_entry->i_last_region_align;
        }
    }

    SubsdelayHeapUnlock( p_heap );
}
