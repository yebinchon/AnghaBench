
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* psz_rtsp_control_v6; char* psz_rtsp_control_v4; scalar_t__ i_length; int i_es; TYPE_3__** es; int p_vod; } ;
typedef TYPE_2__ vod_media_t ;
struct vlc_memstream {char* ptr; } ;
struct sockaddr_storage {int ss_len; int ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_7__ {int i_cat; } ;
struct TYPE_9__ {int psz_fmtp; int i_channels; int i_clock_rate; int psz_ptname; int i_payload_type; TYPE_1__ fmt; } ;
typedef TYPE_3__ media_es_t ;
struct TYPE_10__ {scalar_t__ rem; int quot; } ;
typedef TYPE_4__ lldiv_t ;
typedef int httpd_client_t ;


 int AF_INET ;
 int AF_INET6 ;

 int MS_FROM_VLC_TICK (scalar_t__) ;
 int NI_MAXNUMERICHOST ;


 int VLC_OBJECT (int ) ;
 int VLC_TICK_FROM_MS (int) ;
 int * httpd_ServerIP (int *,char*,int*) ;
 TYPE_4__ lldiv (int ,int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int sdp_AddAttribute (struct vlc_memstream*,char*,char const*,char*,int,...) ;
 int sdp_AddMedia (struct vlc_memstream*,char const*,char*,int ,int ,int,int ,int ,int ,int ,int ) ;
 int * strchr (char*,char) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 scalar_t__ vlc_sdp_Start (struct vlc_memstream*,int ,char*,int *,int ,struct sockaddr*,int) ;

__attribute__((used)) static char *SDPGenerate( const vod_media_t *p_media, httpd_client_t *cl )
{
    struct vlc_memstream sdp;
    char ip[NI_MAXNUMERICHOST];
    const char *psz_control;
    int port;

    if( httpd_ServerIP( cl, ip, &port ) == ((void*)0) )
        return ((void*)0);

    bool ipv6 = ( strchr( ip, ':' ) != ((void*)0) );

    psz_control = ipv6 ? p_media->psz_rtsp_control_v6
                       : p_media->psz_rtsp_control_v4;


    struct sockaddr_storage dst;
    socklen_t dstlen = ipv6 ? sizeof( struct sockaddr_in6 )
                            : sizeof( struct sockaddr_in );
    memset (&dst, 0, dstlen);
    dst.ss_family = ipv6 ? AF_INET6 : AF_INET;




    if( vlc_sdp_Start( &sdp, VLC_OBJECT( p_media->p_vod ), "sout-rtp-",
                       ((void*)0), 0, (struct sockaddr *)&dst, dstlen ) )
        return ((void*)0);

    if( p_media->i_length > 0 )
    {
        lldiv_t d = lldiv( MS_FROM_VLC_TICK(p_media->i_length), VLC_TICK_FROM_MS(1) );
        sdp_AddAttribute( &sdp, "range","npt=0-%lld.%03u", d.quot,
                          (unsigned)d.rem );
    }

    for( int i = 0; i < p_media->i_es; i++ )
    {
        media_es_t *p_es = p_media->es[i];
        const char *mime_major;

        switch( p_es->fmt.i_cat )
        {
            case 128:
                mime_major = "video";
                break;
            case 130:
                mime_major = "audio";
                break;
            case 129:
                mime_major = "text";
                break;
            default:
                continue;
        }

        sdp_AddMedia( &sdp, mime_major, "RTP/AVP", 0 ,
                      p_es->i_payload_type, 0, 0,
                      p_es->psz_ptname, p_es->i_clock_rate, p_es->i_channels,
                      p_es->psz_fmtp );

        sdp_AddAttribute( &sdp, "control", psz_control, ip, port, i );
    }

    return vlc_memstream_close( &sdp ) ? ((void*)0) : sdp.ptr;
}
