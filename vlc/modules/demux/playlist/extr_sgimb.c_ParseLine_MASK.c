#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {int b_rtsp_kasenna; int i_mcast_port; int i_packet_size; int i_port; int i_sid; int b_concert; int /*<<< orphan*/  i_duration; void* psz_mcast_ip; void* psz_name; void* psz_password; void* psz_user; void* psz_location; void* psz_server; void* psz_uri; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 ( stream_t *p_demux, char *psz_line )
{
    char        *psz_bol;
    demux_sys_t *p_sys = p_demux->p_sys;

    psz_bol = psz_line;

    /* Remove unnecessary tabs or spaces at the beginning of line */
    while( *psz_bol == ' ' || *psz_bol == '\t' ||
           *psz_bol == '\n' || *psz_bol == '\r' )
    {
        psz_bol++;
    }

    if( !FUNC4( psz_bol, "rtsp://", sizeof("rtsp://") - 1 ) )
    {
        /* We found the link, it was inside a sgiQTFileBegin */
        FUNC1( p_sys->psz_uri );
        p_sys->psz_uri = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "Stream=\"", sizeof("Stream=\"") - 1 ) )
    {
        psz_bol += sizeof("Stream=\"") - 1;
        char* psz_tmp = FUNC5( psz_bol, '"' );
        if( !psz_tmp )
            return 0;
        psz_tmp[0] = '\0';
        /* We cheat around xdma. for some reason xdma links work different then rtsp */
        if( !FUNC4( psz_bol, "xdma://", sizeof("xdma://") - 1 ) )
        {
            psz_bol[0] = 'r';
            psz_bol[1] = 't';
            psz_bol[2] = 's';
            psz_bol[3] = 'p';
        }
        FUNC1( p_sys->psz_uri );
        p_sys->psz_uri = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "sgiNameServerHost=", sizeof("sgiNameServerHost=") - 1 ) )
    {
        psz_bol += sizeof("sgiNameServerHost=") - 1;
        FUNC1( p_sys->psz_server );
        p_sys->psz_server = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "sgiMovieName=", sizeof("sgiMovieName=") - 1 ) )
    {
        psz_bol += sizeof("sgiMovieName=") - 1;
        FUNC1( p_sys->psz_location );
        p_sys->psz_location = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "sgiUserAccount=", sizeof("sgiUserAccount=") - 1 ) )
    {
        psz_bol += sizeof("sgiUserAccount=") - 1;
        FUNC1( p_sys->psz_user );
        p_sys->psz_user = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "sgiUserPassword=", sizeof("sgiUserPassword=") - 1 ) )
    {
        psz_bol += sizeof("sgiUserPassword=") - 1;
        FUNC1( p_sys->psz_password );
        p_sys->psz_password = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "sgiShowingName=", sizeof("sgiShowingName=") - 1 ) )
    {
        psz_bol += sizeof("sgiShowingName=") - 1;
        FUNC1( p_sys->psz_name );
        p_sys->psz_name = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "sgiFormatName=", sizeof("sgiFormatName=") - 1 ) )
    {
        psz_bol += sizeof("sgiFormatName=") - 1;
        if( FUNC2( psz_bol, "MPEG-4") == NULL ) /*not mpeg4 found in string */
            p_sys->b_rtsp_kasenna = true;
    }
    else if( !FUNC4( psz_bol, "sgiMulticastAddress=", sizeof("sgiMulticastAddress=") - 1 ) )
    {
        psz_bol += sizeof("sgiMulticastAddress=") - 1;
        FUNC1( p_sys->psz_mcast_ip );
        p_sys->psz_mcast_ip = FUNC3( psz_bol );
    }
    else if( !FUNC4( psz_bol, "sgiMulticastPort=", sizeof("sgiMulticastPort=") - 1 ) )
    {
        psz_bol += sizeof("sgiMulticastPort=") - 1;
        p_sys->i_mcast_port = (int) FUNC6( psz_bol, NULL, 0 );
    }
    else if( !FUNC4( psz_bol, "sgiPacketSize=", sizeof("sgiPacketSize=") - 1 ) )
    {
        psz_bol += sizeof("sgiPacketSize=") - 1;
        p_sys->i_packet_size = (int) FUNC6( psz_bol, NULL, 0 );
    }
    else if( !FUNC4( psz_bol, "sgiDuration=", sizeof("sgiDuration=") - 1 ) )
    {
        psz_bol += sizeof("sgiDuration=") - 1;
        p_sys->i_duration = FUNC0( FUNC6( psz_bol, NULL, 0 ) );
    }
    else if( !FUNC4( psz_bol, "sgiRtspPort=", sizeof("sgiRtspPort=") - 1 ) )
    {
        psz_bol += sizeof("sgiRtspPort=") - 1;
        p_sys->i_port = (int) FUNC6( psz_bol, NULL, 0 );
    }
    else if( !FUNC4( psz_bol, "sgiSid=", sizeof("sgiSid=") - 1 ) )
    {
        psz_bol += sizeof("sgiSid=") - 1;
        p_sys->i_sid = (int) FUNC6( psz_bol, NULL, 0 );
    }
    else if( !FUNC4( psz_bol, "DeliveryService=cds", sizeof("DeliveryService=cds") - 1 ) )
    {
        p_sys->b_concert = true;
    }
    else
    {
        /* This line isn't really important */
        return 0;
    }
    return VLC_SUCCESS;
}