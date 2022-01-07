
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sessionc; scalar_t__ timeout; int lock; struct TYPE_5__* psz_path; int timer; int * sessionv; scalar_t__ host; scalar_t__ url; } ;
typedef TYPE_1__ rtsp_stream_t ;


 int RtspClientDel (TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int httpd_HostDelete (scalar_t__) ;
 int httpd_UrlDelete (scalar_t__) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_timer_destroy (int ) ;

void RtspUnsetup( rtsp_stream_t *rtsp )
{
    if( rtsp->url )
        httpd_UrlDelete( rtsp->url );

    if( rtsp->host )
        httpd_HostDelete( rtsp->host );

    while( rtsp->sessionc > 0 )
        RtspClientDel( rtsp, rtsp->sessionv[0] );

    if (rtsp->timeout != 0)
        vlc_timer_destroy(rtsp->timer);

    free( rtsp->psz_path );
    vlc_mutex_destroy( &rtsp->lock );

    free( rtsp );
}
