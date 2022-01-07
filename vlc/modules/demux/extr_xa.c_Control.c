
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int int64_t ;
struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int i_data_size; int i_frame_size; int i_bitrate; } ;
typedef TYPE_2__ demux_sys_t ;


 scalar_t__ HEADER_LENGTH ;
 int demux_vaControlHelper (int ,scalar_t__,int,int ,int ,int,int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    return demux_vaControlHelper( p_demux->s, HEADER_LENGTH,
        p_sys->i_data_size ? (int64_t)HEADER_LENGTH + p_sys->i_data_size : -1,
                                  p_sys->i_bitrate, p_sys->i_frame_size,
                                  i_query, args );
}
