#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  httpd_host_t ;
typedef  int /*<<< orphan*/  httpd_handler_t ;
struct TYPE_5__ {int /*<<< orphan*/  L; int /*<<< orphan*/  password; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ httpd_handler_lua_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC17 (int) ; 
 int /*<<< orphan*/  vlclua_httpd_handler_callback ; 
 int /*<<< orphan*/  vlclua_httpd_handler_delete ; 

__attribute__((used)) static int FUNC18( lua_State * L )
{
    httpd_host_t **pp_host = (httpd_host_t **)FUNC4( L, 1, "httpd_host" );
    const char *psz_url = FUNC3( L, 2 );
    const char *psz_user = FUNC7( L, 3 );
    const char *psz_password = FUNC7( L, 4 );
    /* Stack item 5 is the callback function */
    FUNC2( L, FUNC9( L, 5 ), 5, "Should be a function" );
    /* Stack item 6 is the callback data */
    FUNC15( L, 6 );
    httpd_handler_lua_t *p_sys = FUNC17( sizeof( *p_sys ) );
    if( !p_sys )
        return FUNC5( L, "Failed to allocate private buffer." );
    p_sys->L = FUNC10( L );
    p_sys->ref = FUNC8( L, LUA_REGISTRYINDEX ); /* pops the object too */
    p_sys->password = psz_password && *psz_password;
    /* use lua_xmove to move the lua callback function and data to
     * the callback's stack. */
    FUNC16( L, p_sys->L, 2 );
    httpd_handler_t *p_handler = FUNC1(
                            *pp_host, psz_url, psz_user, psz_password,
                            vlclua_httpd_handler_callback, p_sys );
    if( !p_handler )
    {
        FUNC0( p_sys );
        return FUNC5( L, "Failed to create HTTPd handler." );
    }

    httpd_handler_t **pp_handler = FUNC11( L, sizeof( httpd_handler_t * ) );
    *pp_handler = p_handler;

    if( FUNC6( L, "httpd_handler" ) )
    {
        FUNC12( L, vlclua_httpd_handler_delete );
        FUNC13( L, -2, "__gc" );
    }

    FUNC14( L, -2 );
    return 1;
}