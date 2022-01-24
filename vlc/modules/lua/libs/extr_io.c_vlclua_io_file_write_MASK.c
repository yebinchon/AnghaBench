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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* LUA_NUMBER_FMT ; 
 scalar_t__ LUA_TNUMBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
    FILE **pp_file = (FILE**)FUNC3( L, 1, "io_file" );
    if ( !*pp_file )
        return FUNC4( L, "Attempt to use a closed file" );
    int i_nb_args = FUNC5( L );
    bool b_success = true;
    for ( int i = 2; i <= i_nb_args; ++i )
    {
        bool i_res;
        if ( FUNC8( L, i ) == LUA_TNUMBER )
            i_res = FUNC0(*pp_file, LUA_NUMBER_FMT, FUNC7( L, i ) ) > 0;
        else
        {
            size_t i_len;
            const char* psz_value = FUNC2( L, i, &i_len );
            i_res = FUNC1(psz_value, sizeof(*psz_value), i_len, *pp_file ) > 0;
        }
        b_success = b_success && i_res;
    }
    FUNC6( L, b_success );
    return 1;
}