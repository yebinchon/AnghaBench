
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* stream; int last_seen; } ;
typedef TYPE_1__ rtsp_session_t ;
struct TYPE_5__ {scalar_t__ timeout; } ;


 int RtspUpdateTimer (TYPE_2__*) ;
 int vlc_tick_now () ;

__attribute__((used)) static void RtspClientAlive( rtsp_session_t *session )
{
    if (session->stream->timeout == 0)
        return;

    session->last_seen = vlc_tick_now();
    RtspUpdateTimer(session->stream);
}
