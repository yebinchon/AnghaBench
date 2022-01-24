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
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
    const char *psz_input = FUNC1( L, 1 );
    const char *psz_scheme = FUNC2( L, 2, NULL );
    if( FUNC4( psz_input, "://" ) == NULL )
    {
        char *psz_uri = FUNC5( psz_input, psz_scheme );
        FUNC3( L, psz_uri );
        FUNC0( psz_uri );
    }
    else
        FUNC3( L, psz_input );
    return 1;
}