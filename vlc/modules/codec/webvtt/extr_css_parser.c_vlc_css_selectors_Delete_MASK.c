#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_first; } ;
struct TYPE_6__ {struct TYPE_6__* p_matchsel; TYPE_1__ specifiers; struct TYPE_6__* psz_name; struct TYPE_6__* p_next; } ;
typedef  TYPE_2__ vlc_css_selector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1( vlc_css_selector_t *p_sel )
{
    while( p_sel )
    {
        vlc_css_selector_t *p_next = p_sel->p_next;
        FUNC0( p_sel->psz_name );
        FUNC1( p_sel->specifiers.p_first );
        FUNC1( p_sel->p_matchsel );
        FUNC0( p_sel );
        p_sel = p_next;
    }
}