
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_14__ {TYPE_4__* p_source; TYPE_3__* p_subpic; } ;
typedef TYPE_5__ subsdelay_heap_entry_t ;
struct TYPE_15__ {TYPE_7__* p_sys; } ;
typedef TYPE_6__ filter_t ;
struct TYPE_16__ {int i_mode; int f_factor; } ;
typedef TYPE_7__ filter_sys_t ;
struct TYPE_13__ {int i_stop; int i_start; } ;
struct TYPE_12__ {TYPE_2__* p_region; } ;
struct TYPE_11__ {TYPE_1__* p_text; } ;
struct TYPE_10__ {int psz_text; } ;


 int SUBSDELAY_MODE_ABSOLUTE ;
 int SUBSDELAY_MODE_RELATIVE_SOURCE_CONTENT ;
 int SUBSDELAY_MODE_RELATIVE_SOURCE_DELAY ;
 int SubsdelayGetTextRank (int ) ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 scalar_t__ likely (int) ;
 scalar_t__ vlc_tick_from_sec (int) ;

__attribute__((used)) static vlc_tick_t SubsdelayEstimateDelay( filter_t *p_filter, subsdelay_heap_entry_t *p_entry )
{
    int i_mode;
    int i_rank;

    filter_sys_t *p_sys = p_filter->p_sys;

    i_mode = p_sys->i_mode;

    if( i_mode == SUBSDELAY_MODE_ABSOLUTE )
    {
        return ( p_entry->p_source->i_stop - p_entry->p_source->i_start + vlc_tick_from_sec( p_sys->f_factor ) );
    }

    if( i_mode == SUBSDELAY_MODE_RELATIVE_SOURCE_CONTENT )
    {
        if( p_entry->p_subpic && p_entry->p_subpic->p_region && ( p_entry->p_subpic->p_region->p_text ) )
        {

            i_rank = SubsdelayGetTextRank( p_entry->p_subpic->p_region->p_text->psz_text );

            return vlc_tick_from_sec( p_sys->f_factor * i_rank );
        }


        i_mode = SUBSDELAY_MODE_RELATIVE_SOURCE_DELAY;
    }

    if( likely(i_mode == SUBSDELAY_MODE_RELATIVE_SOURCE_DELAY) )
    {
        return (vlc_tick_t)( p_sys->f_factor * ( p_entry->p_source->i_stop - p_entry->p_source->i_start ) );
    }

    return VLC_TICK_FROM_SEC(10);
}
