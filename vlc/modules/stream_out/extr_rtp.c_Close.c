
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_7__ {int i_es; struct TYPE_7__* psz_destination; struct TYPE_7__* psz_vod_session; struct TYPE_7__* psz_sdp_file; struct TYPE_7__* psz_sdp; scalar_t__ p_httpd_host; scalar_t__ p_httpd_file; int lock_es; int lock_ts; int lock_sdp; int * rtsp; scalar_t__ packet; int p_grab; int * es; scalar_t__ p_mux; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int Del (TYPE_1__*,int ) ;
 int RtspUnsetup (int *) ;
 int assert (int) ;
 int block_Release (scalar_t__) ;
 int free (TYPE_2__*) ;
 int httpd_FileDelete (scalar_t__) ;
 int httpd_HostDelete (scalar_t__) ;
 int sout_AccessOutDelete (int ) ;
 int sout_MuxDelete (scalar_t__) ;
 int unlink (TYPE_2__*) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if( p_sys->p_mux )
    {
        assert( p_sys->i_es <= 1 );

        sout_MuxDelete( p_sys->p_mux );
        if ( p_sys->i_es > 0 )
            Del( p_stream, p_sys->es[0] );
        sout_AccessOutDelete( p_sys->p_grab );

        if( p_sys->packet )
        {
            block_Release( p_sys->packet );
        }
    }

    if( p_sys->rtsp != ((void*)0) )
        RtspUnsetup( p_sys->rtsp );

    vlc_mutex_destroy( &p_sys->lock_sdp );
    vlc_mutex_destroy( &p_sys->lock_ts );
    vlc_mutex_destroy( &p_sys->lock_es );

    if( p_sys->p_httpd_file )
        httpd_FileDelete( p_sys->p_httpd_file );

    if( p_sys->p_httpd_host )
        httpd_HostDelete( p_sys->p_httpd_host );

    free( p_sys->psz_sdp );

    if( p_sys->psz_sdp_file != ((void*)0) )
    {
        unlink( p_sys->psz_sdp_file );
        free( p_sys->psz_sdp_file );
    }
    free( p_sys->psz_vod_session );
    free( p_sys->psz_destination );
    free( p_sys );
}
