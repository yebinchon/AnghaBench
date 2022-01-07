
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int (* detach ) (TYPE_2__*) ;int timer; } ;
typedef TYPE_2__ demux_sys_t ;


 int stub1 (TYPE_2__*) ;
 int vlc_timer_destroy (int ) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;

    vlc_timer_destroy (sys->timer);
    sys->detach (sys);
}
