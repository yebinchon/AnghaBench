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
 char* FUNC0 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
    if( FUNC4( L ) < 2 ) return FUNC6( L );

    size_t i_in_bytes;
    const char *psz_input = FUNC2( L, 2, &i_in_bytes );
    if( i_in_bytes == 0 ) return FUNC6( L );

    const char *psz_charset = FUNC3( L, 1 );
    char *psz_output = FUNC0( psz_charset, psz_input, i_in_bytes );
    FUNC5( L, psz_output ? psz_output : "" );
    FUNC1( psz_output );
    return 1;
}