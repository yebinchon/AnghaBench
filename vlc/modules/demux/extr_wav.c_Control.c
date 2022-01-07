
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
typedef int int64_t ;
struct TYPE_8__ {int s; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_6__ {int i_blockalign; } ;
struct TYPE_7__ {TYPE_1__ audio; int i_bitrate; } ;
struct TYPE_9__ {scalar_t__ i_data_size; int i_data_pos; TYPE_2__ fmt; } ;
typedef TYPE_4__ demux_sys_t ;


 int demux_vaControlHelper (int ,int,int,int ,int ,int,int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    int64_t i_end = -1;

    if( p_sys->i_data_size > 0 )
        i_end = p_sys->i_data_pos + p_sys->i_data_size;

    return demux_vaControlHelper( p_demux->s, p_sys->i_data_pos, i_end,
                                   p_sys->fmt.i_bitrate,
                                   p_sys->fmt.audio.i_blockalign,
                                   i_query, args );
}
