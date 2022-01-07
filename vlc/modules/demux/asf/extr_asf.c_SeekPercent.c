
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_8__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_9__ {TYPE_1__* p_fp; int i_bitrate; int i_data_end; int i_data_begin; int i_wait_keyframe; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_7__ {int i_min_data_packet_size; } ;


 int INT16_MAX ;
 int INT64_MAX ;
 int WaitKeyframe (TYPE_2__*) ;
 int __MIN (int ,int ) ;
 int demux_vaControlHelper (int ,int ,int ,int ,int ,int,int ) ;
 int msg_Dbg (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int SeekPercent( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    WaitKeyframe( p_demux );

    msg_Dbg( p_demux, "seek with percent: waiting %i frames", p_sys->i_wait_keyframe );
    return demux_vaControlHelper( p_demux->s, __MIN( INT64_MAX, p_sys->i_data_begin ),
                                   __MIN( INT64_MAX, p_sys->i_data_end ),
                                   __MIN( INT64_MAX, p_sys->i_bitrate ),
                                   __MIN( INT16_MAX, p_sys->p_fp->i_min_data_packet_size ),
                                   i_query, args );
}
