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
struct TYPE_4__ {unsigned int i_port; char* psz_host; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  intf_thread_t ;

/* Variables and functions */
 unsigned int TELNETPORT_DEFAULT ; 
 int FUNC0 (char**,char*,char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 

__attribute__((used)) static char *FUNC10( intf_thread_t *p_intf, const char *name )
{
    char *psz_config = NULL;

    if( !FUNC4( name, "http" ) )
    {
        char *psz_http_src = FUNC7( p_intf, "http-src" );
        bool b_http_index = FUNC5( p_intf, "http-index" );
        if( psz_http_src )
        {
            char *psz_esc = FUNC1( psz_http_src );

            if( FUNC0( &psz_config, "http={dir='%s',no_index=%s}", psz_esc,
                          b_http_index ? "true" : "false" ) == -1 )
                psz_config = NULL;
            FUNC2( psz_esc );
            FUNC2( psz_http_src );
        }
        else
        {
            if( FUNC0( &psz_config, "http={no_index=%s}",
                          b_http_index ? "true" : "false" ) == -1 )
                psz_config = NULL;
        }
    }
    else if( !FUNC4( name, "telnet" ) )
    {
        char *psz_host = FUNC7( p_intf, "telnet-host" );
        if( !FUNC4( psz_host, "*console" ) )
            ;
        else
        {
            vlc_url_t url;
            FUNC9( &url, psz_host );
            unsigned i_port = FUNC6( p_intf, "telnet-port" );
            if ( url.i_port != 0 )
            {
                if ( i_port == TELNETPORT_DEFAULT )
                    i_port = url.i_port;
                else if ( url.i_port != i_port )
                    FUNC3( p_intf, "ignoring port %d (using %d)",
                              url.i_port, i_port );
            }

            char *psz_esc_host = FUNC1( url.psz_host );
            FUNC2( psz_host );
            FUNC8( &url );

            if( FUNC0( &psz_host, "telnet://%s:%d",
                          psz_esc_host ? psz_esc_host : "", i_port ) == -1 )
                psz_host = NULL;
            FUNC2( psz_esc_host );
        }

        char *psz_passwd = FUNC7( p_intf, "telnet-password" );

        char *psz_esc_passwd = FUNC1( psz_passwd );

        if( FUNC0( &psz_config, "telnet={host='%s',password='%s'}",
                      psz_host, psz_esc_passwd ) == -1 )
            psz_config = NULL;

        FUNC2( psz_esc_passwd );
        FUNC2( psz_passwd );
        FUNC2( psz_host );
    }

    return psz_config;
}