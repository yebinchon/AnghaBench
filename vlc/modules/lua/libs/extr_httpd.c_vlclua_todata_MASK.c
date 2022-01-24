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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (size_t,int) ; 

__attribute__((used)) static uint8_t *FUNC4( lua_State *L, int narg, int *pi_data )
{
    size_t i_data;
    const char *psz_data = FUNC1( L, narg, &i_data );
    uint8_t *p_data = FUNC3( i_data, sizeof(uint8_t) );
    *pi_data = (int)i_data;
    if( !p_data )
    {
        FUNC0( L, "Error while allocating buffer." );
        return NULL; /* To please gcc even though luaL_error longjmp-ed out of here */
    }
    FUNC2( p_data, psz_data, i_data );
    return p_data;
}