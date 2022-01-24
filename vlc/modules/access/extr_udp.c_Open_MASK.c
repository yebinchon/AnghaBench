#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {int /*<<< orphan*/  psz_location; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * pf_block; int /*<<< orphan*/  pf_read; TYPE_2__* p_sys; scalar_t__ b_preparsing; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {int fd; int timeout; scalar_t__ length; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  Read ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*,char const*,int,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,char*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10( vlc_object_t *p_this )
{
    stream_t     *p_access = (stream_t*)p_this;
    access_sys_t *sys;

    if( p_access->b_preparsing )
        return VLC_EGENERIC;

    sys = FUNC9( p_this, sizeof( *sys ) );
    if( FUNC7( sys == NULL ) )
        return VLC_ENOMEM;

    sys->length = 0;
    p_access->p_sys = sys;
    p_access->pf_read = Read;
    p_access->pf_block = NULL;
    p_access->pf_control = Control;
    p_access->pf_seek = NULL;

    char *psz_name = FUNC6( p_access->psz_location );
    char *psz_parser;
    const char *psz_server_addr, *psz_bind_addr = "";
    int  i_bind_port = 1234, i_server_port = 0;

    if( FUNC7(psz_name == NULL) )
        return VLC_ENOMEM;

    /* Parse psz_name syntax :
     * [serveraddr[:serverport]][@[bindaddr]:[bindport]] */
    psz_parser = FUNC5( psz_name, '@' );
    if( psz_parser != NULL )
    {
        /* Found bind address and/or bind port */
        *psz_parser++ = '\0';
        psz_bind_addr = psz_parser;

        if( psz_bind_addr[0] == '[' )
            /* skips bracket'd IPv6 address */
            psz_parser = FUNC5( psz_parser, ']' );

        if( psz_parser != NULL )
        {
            psz_parser = FUNC5( psz_parser, ':' );
            if( psz_parser != NULL )
            {
                *psz_parser++ = '\0';
                i_bind_port = FUNC0( psz_parser );
            }
        }
    }

    psz_server_addr = psz_name;
    psz_parser = ( psz_server_addr[0] == '[' )
        ? FUNC5( psz_name, ']' ) /* skips bracket'd IPv6 address */
        : psz_name;

    if( psz_parser != NULL )
    {
        psz_parser = FUNC5( psz_parser, ':' );
        if( psz_parser != NULL )
        {
            *psz_parser++ = '\0';
            i_server_port = FUNC0( psz_parser );
        }
    }

    FUNC2( p_access, "opening server=%s:%d local=%s:%d",
             psz_server_addr, i_server_port, psz_bind_addr, i_bind_port );

    sys->fd = FUNC4( p_access, psz_bind_addr, i_bind_port,
                             psz_server_addr, i_server_port, IPPROTO_UDP );
    FUNC1( psz_name );
    if( sys->fd == -1 )
    {
        FUNC3( p_access, "cannot open socket" );
        return VLC_EGENERIC;
    }

    sys->timeout = FUNC8( p_access, "udp-timeout");
    if( sys->timeout > 0)
        sys->timeout *= 1000;

    return VLC_SUCCESS;
}