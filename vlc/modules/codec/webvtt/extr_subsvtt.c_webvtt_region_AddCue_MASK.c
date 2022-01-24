#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int i_lines_max_scroll; scalar_t__ b_scroll_up; TYPE_2__* p_child; } ;
typedef  TYPE_1__ webvtt_region_t ;
struct TYPE_9__ {struct TYPE_9__* p_next; } ;
typedef  TYPE_2__ webvtt_dom_node_t ;
struct TYPE_10__ {TYPE_2__* p_parent; } ;
typedef  TYPE_3__ webvtt_dom_cue_t ;

/* Variables and functions */
 unsigned int WEBVTT_REGION_LINES_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3( webvtt_region_t *p_region,
                                  webvtt_dom_cue_t *p_cue )
{
    webvtt_dom_node_t **pp_add = &p_region->p_child;
    while( *pp_add )
        pp_add = &((*pp_add)->p_next);
    *pp_add = (webvtt_dom_node_t *)p_cue;
    p_cue->p_parent = (webvtt_dom_node_t *)p_region;

    for( ;; )
    {
        unsigned i_lines = FUNC1( p_region );
        if( i_lines > 0 &&
            ( i_lines > WEBVTT_REGION_LINES_COUNT ||
             (p_region->b_scroll_up && i_lines > p_region->i_lines_max_scroll)) )
        {
            FUNC2( p_region ); /* scrolls up */
            FUNC0( FUNC1( p_region ) < i_lines );
        }
        else break;
    }
}