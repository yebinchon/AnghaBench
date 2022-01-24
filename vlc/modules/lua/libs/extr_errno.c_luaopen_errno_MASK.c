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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 

void FUNC3( lua_State *L )
{
    FUNC1( L );

#define ADD_ERRNO_VALUE( value )  \
    lua_pushinteger( L, value );  \
    lua_setfield( L, -2, #value );

    ADD_ERRNO_VALUE( ENOENT );
    ADD_ERRNO_VALUE( EEXIST );
    ADD_ERRNO_VALUE( EACCES );
    ADD_ERRNO_VALUE( EINVAL );

#undef ADD_ERRNO_VALUE

    FUNC2( L, -2, "errno" );
}