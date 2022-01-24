#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct command_t {scalar_t__ i_command; struct command_t* next; } ;
typedef  int /*<<< orphan*/  extensions_manager_t ;
struct TYPE_5__ {TYPE_1__* p_sys; int /*<<< orphan*/  psz_title; } ;
typedef  TYPE_2__ extension_t ;
struct TYPE_4__ {int /*<<< orphan*/  command_lock; int /*<<< orphan*/  timer; int /*<<< orphan*/ * p_progress_id; struct command_t* command; int /*<<< orphan*/ * p_mgr; } ;

/* Variables and functions */
 scalar_t__ CMD_DEACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VLC_TIMER_FIRE_ONCE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( void *data )
{
    extension_t *p_ext = data;
    extensions_manager_t *p_mgr = p_ext->p_sys->p_mgr;

    FUNC6( &p_ext->p_sys->command_lock );

    for( struct command_t *cmd = p_ext->p_sys->command;
         cmd != NULL;
         cmd = cmd->next )
        if( cmd->i_command == CMD_DEACTIVATE )
        {   /* We have a pending Deactivate command... */
            if( p_ext->p_sys->p_progress_id != NULL )
            {
                FUNC5( p_mgr, p_ext->p_sys->p_progress_id );
                p_ext->p_sys->p_progress_id = NULL;
            }
            FUNC0( p_mgr, p_ext );
            FUNC7( &p_ext->p_sys->command_lock );
            return;
        }

    if( p_ext->p_sys->p_progress_id == NULL )
    {
        p_ext->p_sys->p_progress_id =
            FUNC3( p_mgr, true, 0.0,
                                         FUNC2( "Yes" ),
                                         FUNC2( "Extension not responding!" ),
                                         FUNC2( "Extension '%s' does not respond.\n"
                                         "Do you want to kill it now? " ),
                                         p_ext->psz_title );
        if( p_ext->p_sys->p_progress_id == NULL )
        {
            FUNC0( p_mgr, p_ext );
            FUNC7( &p_ext->p_sys->command_lock );
            return;
        }
        FUNC8( p_ext->p_sys->timer, false, FUNC1(100),
                            VLC_TIMER_FIRE_ONCE );
    }
    else
    {
        if( FUNC4( p_mgr, p_ext->p_sys->p_progress_id ) )
        {
            FUNC5( p_mgr, p_ext->p_sys->p_progress_id );
            p_ext->p_sys->p_progress_id = NULL;
            FUNC0( p_mgr, p_ext );
            FUNC7( &p_ext->p_sys->command_lock );
            return;
        }
        FUNC8( p_ext->p_sys->timer, false, FUNC1(100),
                            VLC_TIMER_FIRE_ONCE );
    }
    FUNC7( &p_ext->p_sys->command_lock );
}