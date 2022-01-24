#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ i_port; scalar_t__* psz_protocol; scalar_t__* psz_host; int /*<<< orphan*/  psz_path; } ;
typedef  TYPE_1__ vlc_url_t ;
struct TYPE_19__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ sout_stream_t ;
struct TYPE_20__ {int b_export_sap; int /*<<< orphan*/ * psz_sdp_file; int /*<<< orphan*/ * rtsp; scalar_t__ p_httpd_file; } ;
typedef  TYPE_3__ sout_stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC14 (char const*) ; 

__attribute__((used)) static void FUNC15( sout_stream_t *p_stream, const char *psz_url )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    vlc_url_t url;

    FUNC13( &url, psz_url );
    if( url.psz_protocol && !FUNC8( url.psz_protocol, "http" ) )
    {
        if( p_sys->p_httpd_file )
        {
            FUNC5( p_stream, "you can use sdp=http:// only once" );
            goto out;
        }

        if( FUNC1( p_stream, &url ) )
        {
            FUNC5( p_stream, "cannot export SDP as HTTP" );
        }
    }
    else if( url.psz_protocol && !FUNC8( url.psz_protocol, "rtsp" ) )
    {
        if( p_sys->rtsp != NULL )
        {
            FUNC5( p_stream, "you can use sdp=rtsp:// only once" );
            goto out;
        }

        if( url.psz_host != NULL && *url.psz_host )
        {
            FUNC7( p_stream, "\"%s\" RTSP host might be ignored in "
                      "multiple-host configurations, use at your own risks.",
                      url.psz_host );
            FUNC6( p_stream, "Consider passing --rtsp-host=IP on the "
                                "command line instead." );

            FUNC9( p_stream, "rtsp-host", VLC_VAR_STRING );
            FUNC11( p_stream, "rtsp-host", url.psz_host );
        }
        if( url.i_port != 0 )
        {
            /* msg_Info( p_stream, "Consider passing --rtsp-port=%u on "
                      "the command line instead.", url.i_port ); */

            FUNC9( p_stream, "rtsp-port", VLC_VAR_INTEGER );
            FUNC10( p_stream, "rtsp-port", url.i_port );
        }

        p_sys->rtsp = FUNC2( FUNC4(p_stream), NULL, url.psz_path );
        if( p_sys->rtsp == NULL )
            FUNC5( p_stream, "cannot export SDP as RTSP" );
    }
    else if( ( url.psz_protocol && !FUNC8( url.psz_protocol, "sap" ) ) ||
             ( url.psz_host && !FUNC8( url.psz_host, "sap" ) ) )
    {
        p_sys->b_export_sap = true;
        FUNC3( p_stream );
    }
    else if( url.psz_protocol && !FUNC8( url.psz_protocol, "file" ) )
    {
        if( p_sys->psz_sdp_file != NULL )
        {
            FUNC5( p_stream, "you can use sdp=file:// only once" );
            goto out;
        }
        p_sys->psz_sdp_file = FUNC14( psz_url );
        if( p_sys->psz_sdp_file == NULL )
            goto out;
        FUNC0( p_stream );
    }
    else
    {
        FUNC7( p_stream, "unknown protocol for SDP (%s)",
                  url.psz_protocol );
    }

out:
    FUNC12( &url );
}