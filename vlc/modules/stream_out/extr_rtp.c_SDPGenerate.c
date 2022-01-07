
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vlc_memstream {char* ptr; } ;
struct sockaddr_storage {int ss_len; int ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_11__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_stream_t ;
struct TYPE_12__ {int i_es; int proto; int lock_es; scalar_t__ rtcp_mux; TYPE_5__** es; int * psz_destination; } ;
typedef TYPE_4__ sout_stream_sys_t ;
struct TYPE_10__ {int * fd; } ;
struct TYPE_14__ {int cat; int fmtp; int channels; int clock_rate; int ptname; int bitrate; int payload_type; } ;
struct TYPE_13__ {int i_port; TYPE_2__ listen; int rtsp_id; TYPE_6__ rtp_fmt; TYPE_1__* sinkv; } ;
typedef TYPE_5__ sout_stream_id_sys_t ;
typedef int socklen_t ;
typedef TYPE_6__ rtp_format_t ;
typedef int dst ;
struct TYPE_9__ {int rtp_fd; } ;


 int AF_INET ;
 int AF_INET6 ;





 char* RtspAppendTrackPath (int ,char const*) ;
 int SOUT_CFG_PREFIX ;


 int VLC_OBJECT (TYPE_3__*) ;
 int free (char*) ;
 int getpeername (int ,struct sockaddr*,int*) ;
 int getsockname (int ,struct sockaddr*,int*) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int sdp_AddAttribute (struct vlc_memstream*,char*,char*,...) ;
 int sdp_AddMedia (struct vlc_memstream*,char const*,char const*,int,int ,int,int ,int ,int ,int ,int ) ;
 int strlen (char const*) ;
 char* toupper (unsigned char) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_sdp_Start (struct vlc_memstream*,int ,int ,int *,int ,struct sockaddr*,int) ;

char *SDPGenerate( sout_stream_t *p_stream, const char *rtsp_url )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    struct vlc_memstream sdp;
    struct sockaddr_storage dst;
    char *psz_sdp = ((void*)0);
    socklen_t dstlen;
    int i;
    int inclport;

    vlc_mutex_lock( &p_sys->lock_es );
    if( unlikely(p_sys->i_es == 0 || (rtsp_url != ((void*)0) && !p_sys->es[0]->rtsp_id)) )
        goto out;

    if( p_sys->psz_destination != ((void*)0) )
    {
        inclport = 1;


        dstlen = sizeof( dst );
        if( p_sys->es[0]->listen.fd != ((void*)0) )
            getsockname( p_sys->es[0]->listen.fd[0],
                         (struct sockaddr *)&dst, &dstlen );
        else
            getpeername( p_sys->es[0]->sinkv[0].rtp_fd,
                         (struct sockaddr *)&dst, &dstlen );
    }
    else
    {
        inclport = 0;


        bool ipv6 = rtsp_url != ((void*)0) && strlen( rtsp_url ) > 7
                    && rtsp_url[7] == '[';


        dstlen = ipv6 ? sizeof( struct sockaddr_in6 )
                      : sizeof( struct sockaddr_in );
        memset (&dst, 0, dstlen);
        dst.ss_family = ipv6 ? AF_INET6 : AF_INET;



    }

    if( vlc_sdp_Start( &sdp, VLC_OBJECT( p_stream ), SOUT_CFG_PREFIX,
                       ((void*)0), 0, (struct sockaddr *)&dst, dstlen ) )
        goto out;


    if( p_sys->rtcp_mux )
        sdp_AddAttribute( &sdp, "rtcp-mux", ((void*)0) );

    if( rtsp_url != ((void*)0) )
        sdp_AddAttribute ( &sdp, "control", "%s", rtsp_url );

    const char *proto = "RTP/AVP";
    if( rtsp_url == ((void*)0) )
    {
        switch( p_sys->proto )
        {
            case 131:
                break;
            case 132:
                proto = "TCP/RTP/AVP";
                break;
            case 133:
                proto = "DCCP/RTP/AVP";
                break;
            case 130:
                return psz_sdp;
        }
    }

    for( i = 0; i < p_sys->i_es; i++ )
    {
        sout_stream_id_sys_t *id = p_sys->es[i];
        rtp_format_t *rtp_fmt = &id->rtp_fmt;
        const char *mime_major;

        switch( rtp_fmt->cat )
        {
            case 128:
                mime_major = "video";
                break;
            case 134:
                mime_major = "audio";
                break;
            case 129:
                mime_major = "text";
                break;
            default:
                continue;
        }

        sdp_AddMedia( &sdp, mime_major, proto, inclport * id->i_port,
                      rtp_fmt->payload_type, 0, rtp_fmt->bitrate,
                      rtp_fmt->ptname, rtp_fmt->clock_rate, rtp_fmt->channels,
                      rtp_fmt->fmtp);


        if( inclport && !p_sys->rtcp_mux && (id->i_port & 1) )
            sdp_AddAttribute( &sdp, "rtcp", "%u", id->i_port + 1 );

        if( rtsp_url != ((void*)0) )
        {
            char *track_url = RtspAppendTrackPath( id->rtsp_id, rtsp_url );
            if( track_url != ((void*)0) )
            {
                sdp_AddAttribute( &sdp, "control", "%s", track_url );
                free( track_url );
            }
        }
        else
        {
            if( id->listen.fd != ((void*)0) )
                sdp_AddAttribute( &sdp, "setup", "passive" );
            if( p_sys->proto == 133 )
                sdp_AddAttribute( &sdp, "dccp-service-code", "SC:RTP%c",
                                  toupper( (unsigned char)mime_major[0] ) );
        }
    }

    if( vlc_memstream_close( &sdp ) == 0 )
        psz_sdp = sdp.ptr;
out:
    vlc_mutex_unlock( &p_sys->lock_es );
    return psz_sdp;
}
