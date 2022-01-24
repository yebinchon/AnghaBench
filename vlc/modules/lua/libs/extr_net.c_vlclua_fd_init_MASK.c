#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fdc; int /*<<< orphan*/ * fdv; int /*<<< orphan*/ * interrupt; } ;
typedef  TYPE_1__ vlclua_dtable_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  vlclua_get_dtable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC4( lua_State *L, vlclua_dtable_t *dt )
{
    dt->interrupt = FUNC2();
    if( FUNC1(dt->interrupt == NULL) )
        return -1;
    dt->fdv = NULL;
    dt->fdc = 0;
    FUNC3( L, vlclua_get_dtable, dt );
    FUNC0( L );
    return 0;
}