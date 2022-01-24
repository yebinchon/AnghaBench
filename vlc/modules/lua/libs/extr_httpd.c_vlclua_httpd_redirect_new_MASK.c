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
typedef  int /*<<< orphan*/  httpd_redirect_t ;
typedef  int /*<<< orphan*/  httpd_host_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vlclua_httpd_redirect_delete ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
    httpd_host_t **pp_host = (httpd_host_t **)FUNC2( L, 1, "httpd_host" );
    const char *psz_url_dst = FUNC1( L, 2 );
    const char *psz_url_src = FUNC1( L, 3 );
    httpd_redirect_t *p_redirect = FUNC0( *pp_host,
                                                      psz_url_dst,
                                                      psz_url_src );
    if( !p_redirect )
        return FUNC3( L, "Failed to create HTTPd redirect." );

    httpd_redirect_t **pp_redirect = FUNC5( L, sizeof( httpd_redirect_t * ) );
    *pp_redirect = p_redirect;

    if( FUNC4( L, "httpd_redirect" ) )
    {
        FUNC6( L, vlclua_httpd_redirect_delete );
        FUNC7( L, -2, "__gc" );
    }

    FUNC8( L, -2 );
    return 1;
}