#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  next; int /*<<< orphan*/  current; scalar_t__ i_flags; void* i_dts; void* i_pts; } ;
typedef  TYPE_1__ cc_storage_t ;

/* Variables and functions */
 void* VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 

cc_storage_t * FUNC3( void )
{
    cc_storage_t *p_ccs = FUNC2( sizeof(*p_ccs) );
    if( FUNC1(p_ccs) )
    {
        p_ccs->i_pts = VLC_TICK_INVALID;
        p_ccs->i_dts = VLC_TICK_INVALID;
        p_ccs->i_flags = 0;
        FUNC0( &p_ccs->current );
        FUNC0( &p_ccs->next );
    }
    return p_ccs;
}