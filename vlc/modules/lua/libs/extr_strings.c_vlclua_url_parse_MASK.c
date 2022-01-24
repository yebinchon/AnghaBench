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
struct TYPE_4__ {int /*<<< orphan*/  psz_option; int /*<<< orphan*/  psz_path; int /*<<< orphan*/  i_port; int /*<<< orphan*/  psz_host; int /*<<< orphan*/  psz_password; int /*<<< orphan*/  psz_username; int /*<<< orphan*/  psz_protocol; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 

int FUNC7( lua_State *L )
{
    const char *psz_url = FUNC0( L, 1 );
    vlc_url_t url;

    FUNC6( &url, psz_url );

    FUNC1( L );
    FUNC3( L, url.psz_protocol );
    FUNC4( L, -2, "protocol" );
    FUNC3( L, url.psz_username );
    FUNC4( L, -2, "username" );
    FUNC3( L, url.psz_password );
    FUNC4( L, -2, "password" );
    FUNC3( L, url.psz_host );
    FUNC4( L, -2, "host" );
    FUNC2( L, url.i_port );
    FUNC4( L, -2, "port" );
    FUNC3( L, url.psz_path );
    FUNC4( L, -2, "path" );
    FUNC3( L, url.psz_option );
    FUNC4( L, -2, "option" );

    FUNC5( &url );

    return 1;
}