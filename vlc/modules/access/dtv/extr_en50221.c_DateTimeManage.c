
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i_last; scalar_t__ i_interval; } ;
typedef TYPE_2__ date_time_t ;
struct TYPE_8__ {TYPE_1__* p_sessions; } ;
typedef TYPE_3__ cam_t ;
struct TYPE_6__ {scalar_t__ p_sys; } ;


 int DateTimeSend (TYPE_3__*,int) ;
 scalar_t__ vlc_tick_from_sec (scalar_t__) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void DateTimeManage( cam_t * p_cam, int i_session_id )
{
    date_time_t *p_date =
        (date_time_t *)p_cam->p_sessions[i_session_id - 1].p_sys;

    if ( p_date->i_interval
          && vlc_tick_now() > p_date->i_last + vlc_tick_from_sec( p_date->i_interval ) )
    {
        DateTimeSend( p_cam, i_session_id );
    }
}
