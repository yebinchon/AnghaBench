
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sessionv; int sessionc; } ;
typedef TYPE_1__ rtsp_stream_t ;
struct TYPE_8__ {int * trackv; scalar_t__ trackc; int id; TYPE_1__* stream; } ;
typedef TYPE_2__ rtsp_session_t ;


 int TAB_APPEND (int ,int ,TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int vlc_rand_bytes (int *,int) ;

__attribute__((used)) static
rtsp_session_t *RtspClientNew( rtsp_stream_t *rtsp )
{
    rtsp_session_t *s = malloc( sizeof( *s ) );
    if( s == ((void*)0) )
        return ((void*)0);

    s->stream = rtsp;
    vlc_rand_bytes (&s->id, sizeof (s->id));
    s->trackc = 0;
    s->trackv = ((void*)0);

    TAB_APPEND( rtsp->sessionc, rtsp->sessionv, s );

    return s;
}
