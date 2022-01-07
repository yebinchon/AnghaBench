
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int sessionc; int lock; TYPE_4__** sessionv; } ;
typedef TYPE_1__ rtsp_stream_t ;
struct TYPE_11__ {int url; } ;
typedef TYPE_2__ rtsp_stream_id_t ;
struct TYPE_12__ {TYPE_2__* id; } ;
typedef TYPE_3__ rtsp_strack_t ;
struct TYPE_13__ {int trackc; TYPE_3__* trackv; } ;
typedef TYPE_4__ rtsp_session_t ;


 int RtspTrackClose (TYPE_3__*) ;
 int TAB_ERASE (int,TYPE_3__*,int) ;
 int free (TYPE_2__*) ;
 int httpd_UrlDelete (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void RtspDelId( rtsp_stream_t *rtsp, rtsp_stream_id_t *id )
{
    httpd_UrlDelete( id->url );

    vlc_mutex_lock( &rtsp->lock );
    for( int i = 0; i < rtsp->sessionc; i++ )
    {
        rtsp_session_t *ses = rtsp->sessionv[i];

        for( int j = 0; j < ses->trackc; j++ )
        {
            if( ses->trackv[j].id == id )
            {
                rtsp_strack_t *tr = ses->trackv + j;
                RtspTrackClose( tr );
                TAB_ERASE(ses->trackc, ses->trackv, j);
            }
        }
    }

    vlc_mutex_unlock( &rtsp->lock );
    free( id );
}
