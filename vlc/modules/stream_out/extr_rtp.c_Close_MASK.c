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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_7__ {int i_es; struct TYPE_7__* psz_destination; struct TYPE_7__* psz_vod_session; struct TYPE_7__* psz_sdp_file; struct TYPE_7__* psz_sdp; scalar_t__ p_httpd_host; scalar_t__ p_httpd_file; int /*<<< orphan*/  lock_es; int /*<<< orphan*/  lock_ts; int /*<<< orphan*/  lock_sdp; int /*<<< orphan*/ * rtsp; scalar_t__ packet; int /*<<< orphan*/  p_grab; int /*<<< orphan*/ * es; scalar_t__ p_mux; } ;
typedef  TYPE_2__ sout_stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11( vlc_object_t * p_this )
{
    sout_stream_t     *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if( p_sys->p_mux )
    {
        FUNC2( p_sys->i_es <= 1 );

        FUNC8( p_sys->p_mux );
        if ( p_sys->i_es > 0 )
            FUNC0( p_stream, p_sys->es[0] );
        FUNC7( p_sys->p_grab );

        if( p_sys->packet )
        {
            FUNC3( p_sys->packet );
        }
    }

    if( p_sys->rtsp != NULL )
        FUNC1( p_sys->rtsp );

    FUNC10( &p_sys->lock_sdp );
    FUNC10( &p_sys->lock_ts );
    FUNC10( &p_sys->lock_es );

    if( p_sys->p_httpd_file )
        FUNC5( p_sys->p_httpd_file );

    if( p_sys->p_httpd_host )
        FUNC6( p_sys->p_httpd_host );

    FUNC4( p_sys->psz_sdp );

    if( p_sys->psz_sdp_file != NULL )
    {
        FUNC9( p_sys->psz_sdp_file );
        FUNC4( p_sys->psz_sdp_file );
    }
    FUNC4( p_sys->psz_vod_session );
    FUNC4( p_sys->psz_destination );
    FUNC4( p_sys );
}