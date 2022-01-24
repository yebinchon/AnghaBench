#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_5__* p_sys; } ;
typedef  TYPE_4__ sout_stream_t ;
struct TYPE_18__ {int /*<<< orphan*/ * psz_sdp_file; scalar_t__ b_export_sap; int /*<<< orphan*/  rtsp; int /*<<< orphan*/  psz_vod_session; int /*<<< orphan*/ * p_vod_media; int /*<<< orphan*/  lock_es; int /*<<< orphan*/  es; int /*<<< orphan*/  i_es; } ;
typedef  TYPE_5__ sout_stream_sys_t ;
struct TYPE_15__ {int /*<<< orphan*/ * fd; int /*<<< orphan*/  thread; } ;
struct TYPE_14__ {TYPE_6__* fmtp; } ;
struct TYPE_19__ {scalar_t__ sinkc; int /*<<< orphan*/  lock_sink; int /*<<< orphan*/ * srtp; TYPE_3__* sinkv; TYPE_2__ listen; scalar_t__ rtsp_id; TYPE_1__ rtp_fmt; int /*<<< orphan*/ * p_fifo; int /*<<< orphan*/  thread; } ;
typedef  TYPE_6__ sout_stream_id_sys_t ;
struct TYPE_16__ {int /*<<< orphan*/  rtp_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static void FUNC16( sout_stream_t *p_stream, void *_id )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    FUNC13( &p_sys->lock_es );
    FUNC3( p_sys->i_es, p_sys->es, id );
    FUNC14( &p_sys->lock_es );

    if( FUNC6(id->p_fifo != NULL) )
    {
        FUNC10( id->thread );
        FUNC11( id->thread, NULL );
        FUNC4( id->p_fifo );
    }

    FUNC5( id->rtp_fmt.fmtp );

    if (p_sys->p_vod_media != NULL)
        FUNC15(p_sys->p_vod_media, p_sys->psz_vod_session, id);
    if( id->rtsp_id )
        FUNC1( p_sys->rtsp, id->rtsp_id );
    if( id->listen.fd != NULL )
    {
        FUNC10( id->listen.thread );
        FUNC11( id->listen.thread, NULL );
        FUNC7( id->listen.fd );
    }
    /* Delete remaining sinks (incoming connections or explicit
     * outgoing dst=) */
    while( id->sinkc > 0 )
        FUNC8( id, id->sinkv[0].rtp_fd );
#ifdef HAVE_SRTP
    if( id->srtp != NULL )
        srtp_destroy( id->srtp );
#endif

    FUNC12( &id->lock_sink );

    /* Update SDP (sap/file) */
    if( p_sys->b_export_sap ) FUNC2( p_stream );
    if( p_sys->psz_sdp_file != NULL ) FUNC0( p_stream );

    FUNC5( id );
}