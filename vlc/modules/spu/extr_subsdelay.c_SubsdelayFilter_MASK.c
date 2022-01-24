#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subsdelay_heap_t ;
struct TYPE_15__ {TYPE_2__* p_subpic; } ;
typedef  TYPE_1__ subsdelay_heap_entry_t ;
struct TYPE_16__ {int b_ephemer; scalar_t__ i_start; scalar_t__ i_stop; int /*<<< orphan*/  b_subtitle; } ;
typedef  TYPE_2__ subpicture_t ;
struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_18__ {int /*<<< orphan*/  heap; } ;
typedef  TYPE_4__ filter_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static subpicture_t * FUNC8( filter_t *p_filter, subpicture_t* p_subpic )
{
    subsdelay_heap_t *p_heap;
    subsdelay_heap_entry_t *p_entry;

    if( !p_subpic->b_subtitle )
    {
        return p_subpic;
    }

    if( FUNC0( p_subpic ) )
    {
        /* empty subtitles usually helps terminate ephemer subtitles, but this filter calculates the stop value anyway,
           so this subtitle can be dropped */

        FUNC7( p_subpic );

        return NULL;
    }

    filter_sys_t *p_sys = p_filter->p_sys;
    p_heap = &p_sys->heap;

    /* add subpicture to the heap */

    FUNC2( p_heap );

    p_entry = FUNC3( p_heap, p_subpic, p_filter );
    if( !p_entry )
    {
        FUNC4( p_heap );

        FUNC6(p_filter, "Can't add subpicture to the heap");

        return p_subpic;
    }

    p_subpic = p_entry->p_subpic; /* get the local subpic */

    if( p_subpic->b_ephemer )
    {
        /* set a relativly long delay in hope that the next subtitle
           will arrive in this time and the real delay could be determined */

        p_subpic->i_stop = p_subpic->i_start + FUNC5(20); /* start + 20 sec */
        p_subpic->b_ephemer = false;
    }


    FUNC1( p_filter );

    FUNC4( p_heap );

    return p_subpic;
}