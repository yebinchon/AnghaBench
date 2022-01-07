
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int frame_size; int f_rate; } ;
typedef TYPE_2__ demux_sys_t ;


 int demux_vaControlHelper (int ,int ,int,int,int,int,int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;


    return demux_vaControlHelper( p_demux->s,
                                   0, -1,
                                   p_sys->frame_size * p_sys->f_rate * 8,
                                   p_sys->frame_size, i_query, args );
}
