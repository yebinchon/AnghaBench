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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ extension_t ;
struct TYPE_5__ {int /*<<< orphan*/  command_lock; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4( lua_State *L )
{
    extension_t *p_ext = FUNC3( L );
    FUNC1( &p_ext->p_sys->command_lock );
    bool b_ret = FUNC0( p_ext );
    FUNC2( &p_ext->p_sys->command_lock );
    return ( b_ret == true ) ? 1 : 0;
}