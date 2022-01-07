
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_5__ {scalar_t__ i_current; } ;
struct TYPE_7__ {int i_demux_flags; TYPE_1__ chapters; int * p_packetized_data; scalar_t__ i_pts; scalar_t__ i_time_offset; scalar_t__ i_stream_offset; } ;
typedef TYPE_3__ demux_sys_t ;


 int INPUT_UPDATE_SEEKPOINT ;
 int VLC_SUCCESS ;
 int block_ChainRelease (int *) ;
 int vlc_stream_Seek (int ,scalar_t__) ;

__attribute__((used)) static int MovetoTimePos( demux_t *p_demux, vlc_tick_t i_time, uint64_t i_pos )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    int i_ret = vlc_stream_Seek( p_demux->s, p_sys->i_stream_offset + i_pos );
    if( i_ret != VLC_SUCCESS )
        return i_ret;
    p_sys->i_time_offset = i_time - p_sys->i_pts;

    if( p_sys->p_packetized_data )
        block_ChainRelease( p_sys->p_packetized_data );
    p_sys->p_packetized_data = ((void*)0);
    p_sys->chapters.i_current = 0;
    p_sys->i_demux_flags |= INPUT_UPDATE_SEEKPOINT;
    return VLC_SUCCESS;
}
