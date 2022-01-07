
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sessionv; int sessionc; } ;
typedef TYPE_1__ rtsp_stream_t ;
struct TYPE_9__ {int trackc; struct TYPE_9__* trackv; } ;
typedef TYPE_2__ rtsp_session_t ;


 int RtspTrackClose (TYPE_2__*) ;
 int TAB_REMOVE (int ,int ,TYPE_2__*) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static
void RtspClientDel( rtsp_stream_t *rtsp, rtsp_session_t *session )
{
    int i;
    TAB_REMOVE( rtsp->sessionc, rtsp->sessionv, session );

    for( i = 0; i < session->trackc; i++ )
        RtspTrackClose( &session->trackv[i] );

    free( session->trackv );
    free( session );
}
