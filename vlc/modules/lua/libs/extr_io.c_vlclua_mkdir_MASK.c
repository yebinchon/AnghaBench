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
 int errno ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
    if( FUNC1( L ) < 2 ) return FUNC5( L );

    const char* psz_dir = FUNC0( L, 1 );
    const char* psz_mode = FUNC0( L, 2 );
    if ( !psz_dir || !psz_mode )
        return FUNC5( L );
    int i_res = FUNC4( psz_dir, FUNC3( psz_mode, NULL, 0 ) );
    int i_err = i_res != 0 ? errno : 0;
    FUNC2( L, i_res );
    FUNC2( L, i_err );
    return 2;
}