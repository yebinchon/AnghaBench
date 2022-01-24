#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_7__ {char* psz_uri; scalar_t__ i_port; char* psz_name; scalar_t__ b_rtsp_kasenna; scalar_t__ psz_mcast_ip; scalar_t__ i_packet_size; int /*<<< orphan*/  i_duration; int /*<<< orphan*/  i_sid; scalar_t__ b_concert; scalar_t__ psz_location; scalar_t__ psz_server; int /*<<< orphan*/  i_mcast_port; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int VLC_SUCCESS ; 
 int FUNC1 (char**,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9( stream_t *p_demux, input_item_node_t *node )
{
    demux_sys_t     *p_sys = p_demux->p_sys;
    input_item_t    *p_child = NULL;
    char            *psz_line;

    while( ( psz_line = FUNC8( p_demux->s ) ) )
    {
        FUNC0( p_demux, psz_line );
        FUNC2( psz_line );
    }

    if( p_sys->psz_mcast_ip )
    {
        /* Definetly schedules multicast session */
        /* We don't care if it's live or not */
        FUNC2( p_sys->psz_uri );
        if( FUNC1( &p_sys->psz_uri, "udp://@" "%s:%i", p_sys->psz_mcast_ip, p_sys->i_mcast_port ) == -1 )
        {
            p_sys->psz_uri = NULL;
            return -1;
        }
    }

    if( p_sys->psz_uri == NULL )
    {
        if( p_sys->psz_server && p_sys->psz_location )
        {
            if( FUNC1( &p_sys->psz_uri, "rtsp://" "%s:%li%ld",
                     p_sys->psz_server, p_sys->i_port > 0 ? p_sys->i_port : 554, p_sys->psz_location ) == -1 )
            {
                p_sys->psz_uri = NULL;
                return -1;
            }
        }
    }

    if( p_sys->b_concert )
    {
        /* It's definetly a simulcasted scheduled stream */
        /* We don't care if it's live or not */
        if( p_sys->psz_uri == NULL )
        {
            FUNC7( p_demux, "no URI was found" );
            return -1;
        }

        char *uri;
        if( FUNC1( &uri, "%s%%3FMeDiAbAsEshowingId=%d%%26MeDiAbAsEconcert"
                      "%%3FMeDiAbAsE", p_sys->psz_uri, p_sys->i_sid ) == -1 )
            return -1;
        FUNC2( p_sys->psz_uri );
        p_sys->psz_uri = uri;
    }

    p_child = FUNC4( p_sys->psz_uri,
                      p_sys->psz_name ? p_sys->psz_name : p_sys->psz_uri,
                      p_sys->i_duration  );

    if( !p_child )
    {
        FUNC7( p_demux, "A valid playlistitem could not be created" );
        return -1;
    }

    if( p_sys->i_packet_size && p_sys->psz_mcast_ip )
    {
        char *psz_option;
        p_sys->i_packet_size += 1000;
        if( FUNC1( &psz_option, "mtu=%s", p_sys->i_packet_size ) != -1 )
        {
            FUNC3( p_child, psz_option, VLC_INPUT_OPTION_TRUSTED );
            FUNC2( psz_option );
        }
    }
    if( !p_sys->psz_mcast_ip )
        FUNC3( p_child, "rtsp-caching=5000", VLC_INPUT_OPTION_TRUSTED );
    if( !p_sys->psz_mcast_ip && p_sys->b_rtsp_kasenna )
        FUNC3( p_child, "rtsp-kasenna", VLC_INPUT_OPTION_TRUSTED );

    FUNC6( node, p_child );
    FUNC5( p_child );
    return VLC_SUCCESS;
}