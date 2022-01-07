
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_5__ {scalar_t__ timeout; int sessionc; int timer; TYPE_1__** sessionv; } ;
typedef TYPE_2__ rtsp_stream_t ;
struct TYPE_4__ {scalar_t__ last_seen; } ;


 int VLC_TIMER_FIRE_ONCE ;
 int vlc_timer_disarm (int ) ;
 int vlc_timer_schedule (int ,int,scalar_t__,int ) ;

__attribute__((used)) static void RtspUpdateTimer( rtsp_stream_t *rtsp )
{
    if (rtsp->timeout == 0)
        return;

    vlc_tick_t timeout = 0;
    for (int i = 0; i < rtsp->sessionc; i++)
    {
        if (timeout == 0 || rtsp->sessionv[i]->last_seen < timeout)
            timeout = rtsp->sessionv[i]->last_seen;
    }
    if (timeout != 0)
    {
        timeout += rtsp->timeout;
        vlc_timer_schedule(rtsp->timer, 1, timeout, VLC_TIMER_FIRE_ONCE);
    }
    else
    {
        vlc_timer_disarm(rtsp->timer);
    }
}
