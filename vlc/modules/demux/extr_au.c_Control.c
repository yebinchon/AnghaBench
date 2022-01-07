
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_8__ {int s; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_6__ {int i_blockalign; } ;
struct TYPE_7__ {TYPE_1__ audio; int i_bitrate; } ;
struct TYPE_9__ {TYPE_2__ fmt; int i_header_size; } ;
typedef TYPE_4__ demux_sys_t ;


 int demux_vaControlHelper (int ,int ,int,int ,int ,int,int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    return demux_vaControlHelper( p_demux->s, p_sys->i_header_size, -1,
                                   p_sys->fmt.i_bitrate, p_sys->fmt.audio.i_blockalign,
                                   i_query, args );
}
