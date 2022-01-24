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
struct command_t {struct command_t* next; int /*<<< orphan*/  i_command; } ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ extension_t ;
struct TYPE_4__ {int /*<<< orphan*/  wait; struct command_t* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DEACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (struct command_t*) ; 
 struct command_t* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4( extension_t *p_ext )
{
    struct command_t *cmd = FUNC1( 1, sizeof( struct command_t ) );
    if( FUNC2( cmd == NULL ) )
        return false;
    /* Free the list of commands */
    if( p_ext->p_sys->command )
        FUNC0( p_ext->p_sys->command->next );

    /* Push command */

    cmd->i_command = CMD_DEACTIVATE;
    if( p_ext->p_sys->command )
        p_ext->p_sys->command->next = cmd;
    else
        p_ext->p_sys->command = cmd;

    FUNC3( &p_ext->p_sys->wait );
    return true;
}