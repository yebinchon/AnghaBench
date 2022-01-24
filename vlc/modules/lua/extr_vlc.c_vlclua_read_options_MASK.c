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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11( vlc_object_t *p_this, lua_State *L,
                            int *pi_options, char ***pppsz_options )
{
    FUNC1( L, -1, "options" );
    if( FUNC3( L, -1 ) )
    {
        FUNC6( L );
        while( FUNC4( L, -2 ) )
        {
            if( FUNC2( L, -1 ) )
            {
                char *psz_option = FUNC10( FUNC7( L, -1 ) );
                FUNC8( p_this, "Option: %s", psz_option );
                FUNC0( *pi_options, *pppsz_options, psz_option );
            }
            else
            {
                FUNC9( p_this, "Option should be a string" );
            }
            FUNC5( L, 1 ); /* pop option */
        }
    }
    FUNC5( L, 1 ); /* pop "options" */
}