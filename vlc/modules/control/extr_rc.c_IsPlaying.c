
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {scalar_t__ last_state; } ;
typedef TYPE_2__ intf_sys_t ;


 scalar_t__ VLC_PLAYER_STATE_PAUSED ;
 scalar_t__ VLC_PLAYER_STATE_PLAYING ;
 int msg_print (TYPE_1__*,char*,int) ;

__attribute__((used)) static void IsPlaying(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;

    msg_print(intf, "%d",
              sys->last_state == VLC_PLAYER_STATE_PLAYING ||
              sys->last_state == VLC_PLAYER_STATE_PAUSED);
}
