
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int b_update_stop; int b_update_position; int b_check_empty; int b_last_region_saved; scalar_t__ i_last_region_align; scalar_t__ i_last_region_y; scalar_t__ i_last_region_x; int i_new_stop; int b_update_ephemer; int * p_next; int * p_filter; TYPE_3__* p_source; TYPE_3__* p_subpic; } ;
typedef TYPE_1__ subsdelay_heap_entry_t ;
struct TYPE_11__ {int pf_destroy; int pf_update; int pf_validate; TYPE_1__* p_sys; } ;
typedef TYPE_2__ subpicture_updater_t ;
struct TYPE_12__ {int i_stop; int b_ephemer; } ;
typedef TYPE_3__ subpicture_t ;
typedef int filter_t ;


 TYPE_3__* SubpicClone (TYPE_3__*,TYPE_2__*) ;
 int SubpicDestroyWrapper ;
 int SubpicUpdateWrapper ;
 int SubpicValidateWrapper ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static subsdelay_heap_entry_t * SubsdelayEntryCreate( subpicture_t *p_source, filter_t *p_filter )
{
    subsdelay_heap_entry_t *p_entry;

    subpicture_t *p_new_subpic;

    subpicture_updater_t updater;



    p_entry = (subsdelay_heap_entry_t *) malloc( sizeof( subsdelay_heap_entry_t ) );

    if( !p_entry )
    {
        return ((void*)0);
    }



    updater.p_sys = p_entry;
    updater.pf_validate = SubpicValidateWrapper;
    updater.pf_update = SubpicUpdateWrapper;
    updater.pf_destroy = SubpicDestroyWrapper;



    p_new_subpic = SubpicClone( p_source, &updater );

    if( !p_new_subpic )
    {
        free( p_entry );
        return ((void*)0);
    }



    p_entry->p_subpic = p_new_subpic;
    p_entry->p_source = p_source;
    p_entry->p_filter = p_filter;
    p_entry->p_next = ((void*)0);
    p_entry->b_update_stop = 1;
    p_entry->b_update_ephemer = p_source->b_ephemer;
    p_entry->b_update_position = 1;
    p_entry->b_check_empty = 1;
    p_entry->i_new_stop = p_source->i_stop;
    p_entry->b_last_region_saved = 0;
    p_entry->i_last_region_x = 0;
    p_entry->i_last_region_y = 0;
    p_entry->i_last_region_align = 0;

    return p_entry;
}
