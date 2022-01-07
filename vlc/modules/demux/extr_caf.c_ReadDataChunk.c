
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int i_data_size; scalar_t__ i_data_offset; } ;
typedef TYPE_2__ demux_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int kCHUNK_SIZE_EOF ;
 scalar_t__ vlc_stream_Tell (int ) ;

__attribute__((used)) static int ReadDataChunk( demux_t *p_demux, uint64_t i_size )
{
    if( i_size < 4 )
        return VLC_EGENERIC;

    demux_sys_t *p_sys = p_demux->p_sys;

    p_sys->i_data_offset = vlc_stream_Tell( p_demux->s ) + 4;
    p_sys->i_data_size = i_size == kCHUNK_SIZE_EOF ? kCHUNK_SIZE_EOF : ( i_size - 4 );

    return VLC_SUCCESS;
}
