
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ i_port; scalar_t__* psz_protocol; scalar_t__* psz_host; int psz_path; } ;
typedef TYPE_1__ vlc_url_t ;
struct TYPE_19__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_stream_t ;
struct TYPE_20__ {int b_export_sap; int * psz_sdp_file; int * rtsp; scalar_t__ p_httpd_file; } ;
typedef TYPE_3__ sout_stream_sys_t ;


 int FileSetup (TYPE_2__*) ;
 scalar_t__ HttpSetup (TYPE_2__*,TYPE_1__*) ;
 int * RtspSetup (int ,int *,int ) ;
 int SapSetup (TYPE_2__*) ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_VAR_INTEGER ;
 int VLC_VAR_STRING ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Info (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*,scalar_t__*) ;
 int strcasecmp (scalar_t__*,char*) ;
 int var_Create (TYPE_2__*,char*,int ) ;
 int var_SetInteger (TYPE_2__*,char*,scalar_t__) ;
 int var_SetString (TYPE_2__*,char*,scalar_t__*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 int vlc_UrlParse (TYPE_1__*,char const*) ;
 int * vlc_uri2path (char const*) ;

__attribute__((used)) static void SDPHandleUrl( sout_stream_t *p_stream, const char *psz_url )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    vlc_url_t url;

    vlc_UrlParse( &url, psz_url );
    if( url.psz_protocol && !strcasecmp( url.psz_protocol, "http" ) )
    {
        if( p_sys->p_httpd_file )
        {
            msg_Err( p_stream, "you can use sdp=http:// only once" );
            goto out;
        }

        if( HttpSetup( p_stream, &url ) )
        {
            msg_Err( p_stream, "cannot export SDP as HTTP" );
        }
    }
    else if( url.psz_protocol && !strcasecmp( url.psz_protocol, "rtsp" ) )
    {
        if( p_sys->rtsp != ((void*)0) )
        {
            msg_Err( p_stream, "you can use sdp=rtsp:// only once" );
            goto out;
        }

        if( url.psz_host != ((void*)0) && *url.psz_host )
        {
            msg_Warn( p_stream, "\"%s\" RTSP host might be ignored in "
                      "multiple-host configurations, use at your own risks.",
                      url.psz_host );
            msg_Info( p_stream, "Consider passing --rtsp-host=IP on the "
                                "command line instead." );

            var_Create( p_stream, "rtsp-host", VLC_VAR_STRING );
            var_SetString( p_stream, "rtsp-host", url.psz_host );
        }
        if( url.i_port != 0 )
        {



            var_Create( p_stream, "rtsp-port", VLC_VAR_INTEGER );
            var_SetInteger( p_stream, "rtsp-port", url.i_port );
        }

        p_sys->rtsp = RtspSetup( VLC_OBJECT(p_stream), ((void*)0), url.psz_path );
        if( p_sys->rtsp == ((void*)0) )
            msg_Err( p_stream, "cannot export SDP as RTSP" );
    }
    else if( ( url.psz_protocol && !strcasecmp( url.psz_protocol, "sap" ) ) ||
             ( url.psz_host && !strcasecmp( url.psz_host, "sap" ) ) )
    {
        p_sys->b_export_sap = 1;
        SapSetup( p_stream );
    }
    else if( url.psz_protocol && !strcasecmp( url.psz_protocol, "file" ) )
    {
        if( p_sys->psz_sdp_file != ((void*)0) )
        {
            msg_Err( p_stream, "you can use sdp=file:// only once" );
            goto out;
        }
        p_sys->psz_sdp_file = vlc_uri2path( psz_url );
        if( p_sys->psz_sdp_file == ((void*)0) )
            goto out;
        FileSetup( p_stream );
    }
    else
    {
        msg_Warn( p_stream, "unknown protocol for SDP (%s)",
                  url.psz_protocol );
    }

out:
    vlc_UrlClean( &url );
}
