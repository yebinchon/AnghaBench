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
typedef  int /*<<< orphan*/  httpd_host_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlclua_httpd_host_delete ; 
 int /*<<< orphan*/  vlclua_httpd_reg ; 

__attribute__((used)) static int FUNC10( lua_State *L )
{
    vlc_object_t *p_this = FUNC9( L );
    httpd_host_t *p_host = FUNC8( p_this );
    if( !p_host )
        return FUNC0( L, "Failed to create HTTP host" );

    httpd_host_t **pp_host = FUNC4( L, sizeof( httpd_host_t * ) );
    *pp_host = p_host;

    if( FUNC1( L, "httpd_host" ) )
    {
        FUNC3( L );
        FUNC2( L, NULL, vlclua_httpd_reg );
        FUNC6( L, -2, "__index" );
        FUNC5( L, vlclua_httpd_host_delete );
        FUNC6( L, -2, "__gc" );
    }

    FUNC7( L, -2 );
    return 1;
}