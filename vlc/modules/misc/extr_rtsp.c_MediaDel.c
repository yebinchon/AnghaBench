
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vod_t ;
struct TYPE_16__ {int media; int i_media; } ;
typedef TYPE_2__ vod_sys_t ;
struct TYPE_17__ {scalar_t__ i_rtsp; scalar_t__ i_es; int lock; TYPE_8__** es; struct TYPE_17__* psz_rtsp_control_v4; struct TYPE_17__* psz_rtsp_control_v6; struct TYPE_17__* psz_rtsp_path; TYPE_8__** rtsp; int p_rtsp_url; } ;
typedef TYPE_3__ vod_media_t ;
struct TYPE_18__ {int fmt; } ;


 int MediaDelES (TYPE_1__*,TYPE_3__*,int *) ;
 int RtspClientDel (TYPE_3__*,TYPE_8__*) ;
 int TAB_CLEAN (scalar_t__,TYPE_8__**) ;
 int TAB_REMOVE (int ,int ,TYPE_3__*) ;
 int free (TYPE_3__*) ;
 int httpd_UrlDelete (int ) ;
 int msg_Dbg (TYPE_1__*,char*,TYPE_3__*) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void MediaDel( vod_t *p_vod, vod_media_t *p_media )
{
    vod_sys_t *p_sys = p_vod->p_sys;

    msg_Dbg( p_vod, "deleting media: %s", p_media->psz_rtsp_path );

    TAB_REMOVE( p_sys->i_media, p_sys->media, p_media );

    httpd_UrlDelete( p_media->p_rtsp_url );

    while( p_media->i_rtsp > 0 )
        RtspClientDel( p_media, p_media->rtsp[0] );
    TAB_CLEAN( p_media->i_rtsp, p_media->rtsp );

    free( p_media->psz_rtsp_path );
    free( p_media->psz_rtsp_control_v6 );
    free( p_media->psz_rtsp_control_v4 );

    while( p_media->i_es )
        MediaDelES( p_vod, p_media, &p_media->es[0]->fmt );
    TAB_CLEAN( p_media->i_es, p_media->es );

    vlc_mutex_destroy( &p_media->lock );

    free( p_media );
}
