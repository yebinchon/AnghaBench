
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
typedef long long int64_t ;
struct TYPE_6__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_5__ {long long i_divider_num; long long i_divider_den; } ;
struct TYPE_7__ {long long frame_size; TYPE_1__ pcr; } ;
typedef TYPE_3__ demux_sys_t ;


 int demux_vaControlHelper (int ,int ,int,long long const,long long,int,int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;


    const int64_t i_bps = 8LL * p_sys->frame_size * p_sys->pcr.i_divider_num /
                                                    p_sys->pcr.i_divider_den;


    return demux_vaControlHelper( p_demux->s, 0, -1, i_bps,
                                   p_sys->frame_size, i_query, args );
}
