
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int subsdelay_heap_t ;
struct TYPE_11__ {TYPE_2__* p_filter; } ;
typedef TYPE_3__ subsdelay_heap_entry_t ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
struct TYPE_12__ {TYPE_1__ updater; } ;
typedef TYPE_4__ subpicture_t ;
struct TYPE_13__ {int heap; } ;
typedef TYPE_5__ filter_sys_t ;
struct TYPE_10__ {TYPE_5__* p_sys; } ;


 int SubsdelayEntryDestroy (TYPE_3__*) ;
 int SubsdelayHeapLock (int *) ;
 int SubsdelayHeapRemove (int *,TYPE_3__*) ;
 int SubsdelayHeapUnlock (int *) ;

__attribute__((used)) static void SubpicDestroyWrapper( subpicture_t *p_subpic )
{
    subsdelay_heap_entry_t *p_entry;
    subsdelay_heap_t *p_heap;

    p_entry = p_subpic->updater.p_sys;

    if( !p_entry )
    {
        return;
    }

    if( p_entry->p_filter )
    {
        filter_sys_t *p_sys = p_entry->p_filter->p_sys;
        p_heap = &p_sys->heap;

        SubsdelayHeapLock( p_heap );
        SubsdelayHeapRemove( p_heap, p_entry );
        SubsdelayHeapUnlock( p_heap );
    }

    SubsdelayEntryDestroy( p_entry );
}
