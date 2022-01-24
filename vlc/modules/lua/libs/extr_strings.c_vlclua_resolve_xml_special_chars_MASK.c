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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
    int i_top = FUNC2( L );
    int i;
    for( i = 1; i <= i_top; i++ )
    {
        const char *psz_cstring = FUNC1( L, 1 );
        char *psz_string = FUNC5( psz_cstring );
        FUNC4( L, 1 ); /* remove elements to prevent being limited by
                             * the stack's size (this function will work with
                             * up to (stack size - 1) arguments */
        FUNC6( psz_string );
        FUNC3( L, psz_string );
        FUNC0( psz_string );
    }
    return i_top;
}