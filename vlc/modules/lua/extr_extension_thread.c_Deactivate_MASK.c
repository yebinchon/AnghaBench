#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  extensions_manager_t ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ extension_t ;
struct TYPE_6__ {int /*<<< orphan*/  command_lock; int /*<<< orphan*/ * p_progress_id; scalar_t__ b_exiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5( extensions_manager_t *p_mgr, extension_t *p_ext )
{
    FUNC3( &p_ext->p_sys->command_lock );

    if( p_ext->p_sys->b_exiting )
    {
        FUNC4( &p_ext->p_sys->command_lock );
        return VLC_EGENERIC;
    }

    if( p_ext->p_sys->p_progress_id != NULL )
    {
        // Extension is stuck, kill it now
        FUNC2( p_mgr, p_ext->p_sys->p_progress_id );
        p_ext->p_sys->p_progress_id = NULL;
        FUNC0( p_mgr, p_ext );
        FUNC4( &p_ext->p_sys->command_lock );
        return VLC_SUCCESS;
    }

    bool b_success = FUNC1( p_ext );
    FUNC4( &p_ext->p_sys->command_lock );

    return b_success ? VLC_SUCCESS : VLC_ENOMEM;
}