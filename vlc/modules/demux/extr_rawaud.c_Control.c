
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_6__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_5__ {int i_bitrate; } ;
struct TYPE_7__ {int i_seek_step; TYPE_1__ fmt; } ;
typedef TYPE_3__ demux_sys_t ;


 int demux_vaControlHelper (int ,int ,int,int ,int ,int,int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    return demux_vaControlHelper( p_demux->s, 0, -1,
                                  p_sys->fmt.i_bitrate, p_sys->i_seek_step, i_query, args );
}
