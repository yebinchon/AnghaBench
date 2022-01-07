
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int i_pts; } ;
typedef TYPE_2__ demux_sys_t ;



__attribute__((used)) static vlc_tick_t ControlGetTime( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    return p_sys->i_pts;
}
