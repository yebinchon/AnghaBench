#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vlclua_input_item_delete ; 
 int /*<<< orphan*/  vlclua_input_item_reg ; 

int FUNC8( lua_State *L, input_item_t *p_item )
{
    FUNC0( p_item );
    input_item_t **pp = FUNC4( L, sizeof( input_item_t* ) );
    *pp = p_item;

    if( FUNC1( L, "input_item" ) )
    {
        FUNC3( L );
        FUNC2( L, NULL, vlclua_input_item_reg );
        FUNC6( L, -2, "__index" );
        FUNC5( L, vlclua_input_item_delete );
        FUNC6( L, -2, "__gc" );
    }

    FUNC7(L, -2);

    return 1;
}