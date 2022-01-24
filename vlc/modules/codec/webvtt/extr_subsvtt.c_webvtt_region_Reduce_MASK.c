#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* p_child; } ;
typedef  TYPE_2__ webvtt_region_t ;
struct TYPE_9__ {int i_lines; TYPE_1__* p_next; } ;
typedef  TYPE_3__ webvtt_dom_cue_t ;
struct TYPE_7__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NODE_CUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3( webvtt_region_t *p_region )
{
    if( p_region->p_child )
    {
        FUNC0( p_region->p_child->type == NODE_CUE );
        if( p_region->p_child->type != NODE_CUE )
            return;
        webvtt_dom_cue_t *p_cue = (webvtt_dom_cue_t *)p_region->p_child;
        if( p_cue->i_lines == 1 ||
            FUNC2( p_cue ) < 1 )
        {
            p_region->p_child = p_cue->p_next;
            p_cue->p_next = NULL;
            FUNC1( p_cue );
        }
    }
}