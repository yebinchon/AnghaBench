
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ sout_stream_t ;
struct TYPE_18__ {int * psz_sdp_file; scalar_t__ b_export_sap; int rtsp; int psz_vod_session; int * p_vod_media; int lock_es; int es; int i_es; } ;
typedef TYPE_5__ sout_stream_sys_t ;
struct TYPE_15__ {int * fd; int thread; } ;
struct TYPE_14__ {TYPE_6__* fmtp; } ;
struct TYPE_19__ {scalar_t__ sinkc; int lock_sink; int * srtp; TYPE_3__* sinkv; TYPE_2__ listen; scalar_t__ rtsp_id; TYPE_1__ rtp_fmt; int * p_fifo; int thread; } ;
typedef TYPE_6__ sout_stream_id_sys_t ;
struct TYPE_16__ {int rtp_fd; } ;


 int FileSetup (TYPE_4__*) ;
 int RtspDelId (int ,scalar_t__) ;
 int SapSetup (TYPE_4__*) ;
 int TAB_REMOVE (int ,int ,TYPE_6__*) ;
 int block_FifoRelease (int *) ;
 int free (TYPE_6__*) ;
 scalar_t__ likely (int ) ;
 int net_ListenClose (int *) ;
 int rtp_del_sink (TYPE_6__*,int ) ;
 int srtp_destroy (int *) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vod_detach_id (int *,int ,TYPE_6__*) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *_id )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    vlc_mutex_lock( &p_sys->lock_es );
    TAB_REMOVE( p_sys->i_es, p_sys->es, id );
    vlc_mutex_unlock( &p_sys->lock_es );

    if( likely(id->p_fifo != ((void*)0)) )
    {
        vlc_cancel( id->thread );
        vlc_join( id->thread, ((void*)0) );
        block_FifoRelease( id->p_fifo );
    }

    free( id->rtp_fmt.fmtp );

    if (p_sys->p_vod_media != ((void*)0))
        vod_detach_id(p_sys->p_vod_media, p_sys->psz_vod_session, id);
    if( id->rtsp_id )
        RtspDelId( p_sys->rtsp, id->rtsp_id );
    if( id->listen.fd != ((void*)0) )
    {
        vlc_cancel( id->listen.thread );
        vlc_join( id->listen.thread, ((void*)0) );
        net_ListenClose( id->listen.fd );
    }


    while( id->sinkc > 0 )
        rtp_del_sink( id, id->sinkv[0].rtp_fd );





    vlc_mutex_destroy( &id->lock_sink );


    if( p_sys->b_export_sap ) SapSetup( p_stream );
    if( p_sys->psz_sdp_file != ((void*)0) ) FileSetup( p_stream );

    free( id );
}
