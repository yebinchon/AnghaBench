
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_5__ {int qqic; } ;
struct TYPE_7__ {TYPE_1__ relay_igmp_query; int updateTimer; int relayDisco; } ;
typedef TYPE_3__ access_sys_t ;


 int VLC_TICK_FROM_SEC (int ) ;
 int amt_send_mem_update (TYPE_2__*,int ,int) ;
 int vlc_timer_schedule (int ,int,int ,int ) ;

__attribute__((used)) static void amt_update_timer_cb( void *data )
{
    stream_t *p_access = (stream_t*) data;
    access_sys_t *sys = p_access->p_sys;

    amt_send_mem_update( p_access, sys->relayDisco, 0 );



    vlc_timer_schedule( sys->updateTimer, 0,
                        VLC_TICK_FROM_SEC( sys->relay_igmp_query.qqic ), 0 );
}
