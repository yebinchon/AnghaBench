
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i_length; int i_es; TYPE_3__** es; int p_vod; } ;
typedef TYPE_1__ vod_media_t ;
struct vlc_memstream {char* ptr; } ;
struct sockaddr_storage {int ss_len; int ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_8__ {int cat; int fmtp; int channels; int clock_rate; int ptname; int payload_type; } ;
typedef TYPE_2__ rtp_format_t ;
struct TYPE_9__ {int rtsp_id; TYPE_2__ rtp_fmt; } ;
typedef TYPE_3__ media_es_t ;
struct TYPE_10__ {scalar_t__ rem; int quot; } ;
typedef TYPE_4__ lldiv_t ;


 int AF_INET ;
 int AF_INET6 ;

 int MS_FROM_VLC_TICK (scalar_t__) ;
 char* RtspAppendTrackPath (int ,char const*) ;


 int VLC_OBJECT (int ) ;
 int assert (int ) ;
 int free (char*) ;
 TYPE_4__ lldiv (int ,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int sdp_AddAttribute (struct vlc_memstream*,char*,char*,char const*,...) ;
 int sdp_AddMedia (struct vlc_memstream*,char const*,char*,int ,int ,int,int ,int ,int ,int ,int ) ;
 int strlen (char const*) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 scalar_t__ vlc_sdp_Start (struct vlc_memstream*,int ,char*,int *,int ,struct sockaddr*,int) ;

char *SDPGenerateVoD( const vod_media_t *p_media, const char *rtsp_url )
{
    assert(rtsp_url != ((void*)0));

    bool ipv6 = strlen( rtsp_url ) > 7 && rtsp_url[7] == '[';


    struct sockaddr_storage dst;
    socklen_t dstlen = ipv6 ? sizeof( struct sockaddr_in6 )
                            : sizeof( struct sockaddr_in );
    memset (&dst, 0, dstlen);
    dst.ss_family = ipv6 ? AF_INET6 : AF_INET;




    struct vlc_memstream sdp;

    if( vlc_sdp_Start( &sdp, VLC_OBJECT( p_media->p_vod ), "sout-rtp-",
                       ((void*)0), 0, (struct sockaddr *)&dst, dstlen ) )
        return ((void*)0);

    if( p_media->i_length > 0 )
    {
        lldiv_t d = lldiv( MS_FROM_VLC_TICK(p_media->i_length), 1000 );
        sdp_AddAttribute( &sdp, "range"," npt=0-%lld.%03u", d.quot,
                          (unsigned)d.rem );
    }

    sdp_AddAttribute( &sdp, "control", "%s", rtsp_url );


    for( int i = 0; i < p_media->i_es; i++ )
    {
        media_es_t *p_es = p_media->es[i];
        rtp_format_t *rtp_fmt = &p_es->rtp_fmt;
        const char *mime_major;

        switch( rtp_fmt->cat )
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

        sdp_AddMedia( &sdp, mime_major, "RTP/AVP", 0,
                      rtp_fmt->payload_type, 0, 0,
                      rtp_fmt->ptname, rtp_fmt->clock_rate, rtp_fmt->channels,
                      rtp_fmt->fmtp );

        char *track_url = RtspAppendTrackPath( p_es->rtsp_id, rtsp_url );
        if( track_url != ((void*)0) )
        {
            sdp_AddAttribute( &sdp, "control", "%s", track_url );
            free( track_url );
        }
    }

    return vlc_memstream_close( &sdp ) ? ((void*)0) : sdp.ptr;
}
