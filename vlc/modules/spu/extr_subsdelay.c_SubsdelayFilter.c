
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int subsdelay_heap_t ;
struct TYPE_15__ {TYPE_2__* p_subpic; } ;
typedef TYPE_1__ subsdelay_heap_entry_t ;
struct TYPE_16__ {int b_ephemer; scalar_t__ i_start; scalar_t__ i_stop; int b_subtitle; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_18__ {int heap; } ;
typedef TYPE_4__ filter_sys_t ;


 scalar_t__ SubpicIsEmpty (TYPE_2__*) ;
 int SubsdelayEnforceDelayRules (TYPE_3__*) ;
 int SubsdelayHeapLock (int *) ;
 TYPE_1__* SubsdelayHeapPush (int *,TYPE_2__*,TYPE_3__*) ;
 int SubsdelayHeapUnlock (int *) ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int subpicture_Delete (TYPE_2__*) ;

__attribute__((used)) static subpicture_t * SubsdelayFilter( filter_t *p_filter, subpicture_t* p_subpic )
{
    subsdelay_heap_t *p_heap;
    subsdelay_heap_entry_t *p_entry;

    if( !p_subpic->b_subtitle )
    {
        return p_subpic;
    }

    if( SubpicIsEmpty( p_subpic ) )
    {



        subpicture_Delete( p_subpic );

        return ((void*)0);
    }

    filter_sys_t *p_sys = p_filter->p_sys;
    p_heap = &p_sys->heap;



    SubsdelayHeapLock( p_heap );

    p_entry = SubsdelayHeapPush( p_heap, p_subpic, p_filter );
    if( !p_entry )
    {
        SubsdelayHeapUnlock( p_heap );

        msg_Err(p_filter, "Can't add subpicture to the heap");

        return p_subpic;
    }

    p_subpic = p_entry->p_subpic;

    if( p_subpic->b_ephemer )
    {



        p_subpic->i_stop = p_subpic->i_start + VLC_TICK_FROM_SEC(20);
        p_subpic->b_ephemer = 0;
    }


    SubsdelayEnforceDelayRules( p_filter );

    SubsdelayHeapUnlock( p_heap );

    return p_subpic;
}
