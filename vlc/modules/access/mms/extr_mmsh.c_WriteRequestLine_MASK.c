#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* psz_password; int /*<<< orphan*/ * psz_username; } ;
typedef  TYPE_2__ vlc_url_t ;
struct vlc_memstream {int dummy; } ;
struct TYPE_5__ {char* psz_path; char* psz_option; int /*<<< orphan*/  i_port; int /*<<< orphan*/  psz_host; } ;
struct TYPE_7__ {scalar_t__ b_proxy; TYPE_2__ proxy; TYPE_1__ url; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 char* MMSH_USER_AGENT ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_memstream*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_memstream*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*,char*) ; 

__attribute__((used)) static void FUNC7( const access_sys_t *sys,
                              struct vlc_memstream *restrict stream )
{
    FUNC3( stream );

    FUNC6( stream, "GET " );
    if( sys->b_proxy )
        FUNC4( stream, "http://%s:%d", sys->url.psz_host,
                              sys->url.i_port );
    if( (sys->url.psz_path == NULL) || (sys->url.psz_path[0] == '\0') )
        FUNC5( stream, '/' );
    else
        FUNC6( stream, sys->url.psz_path );
    if( sys->url.psz_option != NULL )
        FUNC4( stream, "?%s", sys->url.psz_option );
    FUNC6( stream, " HTTP/1.0\r\n" );

    FUNC4( stream, "Host: %s:%d\r\n", sys->url.psz_host,
                          sys->url.i_port );

    /* Proxy Authentication */
    const vlc_url_t *proxy = &sys->proxy;

    if( sys->b_proxy && proxy->psz_username != NULL )
    {
        const char *pw = proxy->psz_password ? proxy->psz_password : "";
        char *buf;

        if( FUNC0( &buf, "%s:%s", proxy->psz_username, pw ) != -1 )
        {
            char *b64 = FUNC2( buf );
            FUNC1( buf );
            if( b64 != NULL )
            {
                FUNC4( stream, "Proxy-Authorization: "
                                      "Basic %s\r\n", b64 );
                FUNC1( b64 );
            }
        }
    }

    FUNC6( stream, "Accept: */*\r\n" );
    FUNC4( stream, "User-Agent: %s\r\n", MMSH_USER_AGENT );
}