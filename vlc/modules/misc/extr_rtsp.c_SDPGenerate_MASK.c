#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* psz_rtsp_control_v6; char* psz_rtsp_control_v4; scalar_t__ i_length; int i_es; TYPE_3__** es; int /*<<< orphan*/  p_vod; } ;
typedef  TYPE_2__ vod_media_t ;
struct vlc_memstream {char* ptr; } ;
struct sockaddr_storage {int ss_len; int /*<<< orphan*/  ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_7__ {int i_cat; } ;
struct TYPE_9__ {int /*<<< orphan*/  psz_fmtp; int /*<<< orphan*/  i_channels; int /*<<< orphan*/  i_clock_rate; int /*<<< orphan*/  psz_ptname; int /*<<< orphan*/  i_payload_type; TYPE_1__ fmt; } ;
typedef  TYPE_3__ media_es_t ;
struct TYPE_10__ {scalar_t__ rem; int /*<<< orphan*/  quot; } ;
typedef  TYPE_4__ lldiv_t ;
typedef  int /*<<< orphan*/  httpd_client_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
#define  AUDIO_ES 130 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int NI_MAXNUMERICHOST ; 
#define  SPU_ES 129 
#define  VIDEO_ES 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 
 TYPE_4__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*,char*,char const*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (struct vlc_memstream*) ; 
 scalar_t__ FUNC10 (struct vlc_memstream*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sockaddr*,int) ; 

__attribute__((used)) static char *FUNC11( const vod_media_t *p_media, httpd_client_t *cl )
{
    struct vlc_memstream sdp;
    char ip[NI_MAXNUMERICHOST];
    const char *psz_control;
    int port;

    if( FUNC3( cl, ip, &port ) == NULL )
        return NULL;

    bool ipv6 = ( FUNC8( ip, ':' ) != NULL );

    psz_control = ipv6 ? p_media->psz_rtsp_control_v6
                       : p_media->psz_rtsp_control_v4;

    /* Dummy destination address for RTSP */
    struct sockaddr_storage dst;
    socklen_t dstlen = ipv6 ? sizeof( struct sockaddr_in6 )
                            : sizeof( struct sockaddr_in );
    FUNC5 (&dst, 0, dstlen);
    dst.ss_family = ipv6 ? AF_INET6 : AF_INET;
#ifdef HAVE_SA_LEN
    dst.ss_len = dstlen;
#endif

    if( FUNC10( &sdp, FUNC1( p_media->p_vod ), "sout-rtp-",
                       NULL, 0, (struct sockaddr *)&dst, dstlen ) )
        return NULL;

    if( p_media->i_length > 0 )
    {
        lldiv_t d = FUNC4( FUNC0(p_media->i_length), FUNC2(1) );
        FUNC6( &sdp, "range","npt=0-%lld.%03u", d.quot,
                          (unsigned)d.rem );
    }

    for( int i = 0; i < p_media->i_es; i++ )
    {
        media_es_t *p_es = p_media->es[i];
        const char *mime_major; /* major MIME type */

        switch( p_es->fmt.i_cat )
        {
            case VIDEO_ES:
                mime_major = "video";
                break;
            case AUDIO_ES:
                mime_major = "audio";
                break;
            case SPU_ES:
                mime_major = "text";
                break;
            default:
                continue;
        }

        FUNC7( &sdp, mime_major, "RTP/AVP", 0 /* p_es->i_port */,
                      p_es->i_payload_type, false, 0,
                      p_es->psz_ptname, p_es->i_clock_rate, p_es->i_channels,
                      p_es->psz_fmtp );

        FUNC6( &sdp, "control", psz_control, ip, port, i );
    }

    return FUNC9( &sdp ) ? NULL : sdp.ptr;
}