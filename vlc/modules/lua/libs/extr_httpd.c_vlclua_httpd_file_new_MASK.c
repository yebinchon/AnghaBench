#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  httpd_host_t ;
typedef  int /*<<< orphan*/  httpd_file_t ;
struct TYPE_4__ {int /*<<< orphan*/  L; int /*<<< orphan*/  ref; int /*<<< orphan*/  password; } ;
typedef  TYPE_1__ httpd_file_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
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
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  vlclua_httpd_file_callback ; 
 int /*<<< orphan*/  vlclua_httpd_file_delete ; 

__attribute__((used)) static int FUNC17( lua_State *L )
{
    httpd_host_t **pp_host = (httpd_host_t **)FUNC4( L, 1, "httpd_host" );
    const char *psz_url = FUNC3( L, 2 );
    const char *psz_mime = FUNC7( L, 3 );
    const char *psz_user = FUNC7( L, 4 );
    const char *psz_password = FUNC7( L, 5 );
    /* Stack item 7 is the callback function */
    FUNC2( L, FUNC9( L, 6 ), 6, "Should be a function" );
    /* Stack item 8 is the callback data */
    httpd_file_sys_t *p_sys = (httpd_file_sys_t *)
                              FUNC16( sizeof( httpd_file_sys_t ) );
    if( !p_sys )
        return FUNC5( L, "Failed to allocate private buffer." );
    p_sys->L = FUNC10( L );
    p_sys->password = psz_password && *psz_password;
    p_sys->ref = FUNC8( L, LUA_REGISTRYINDEX ); /* pops the object too */
    FUNC15( L, p_sys->L, 2 );
    httpd_file_t *p_file = FUNC1( *pp_host, psz_url, psz_mime,
                                          psz_user, psz_password,
                                          vlclua_httpd_file_callback, p_sys );
    if( !p_file )
    {
        FUNC0( p_sys );
        return FUNC5( L, "Failed to create HTTPd file." );
    }

    httpd_file_t **pp_file = FUNC11( L, sizeof( httpd_file_t * ) );
    *pp_file = p_file;

    if( FUNC6( L, "httpd_file" ) )
    {
        FUNC12( L, vlclua_httpd_file_delete );
        FUNC13( L, -2, "__gc" );
    }

    FUNC14( L, -2 );
    return 1;
}