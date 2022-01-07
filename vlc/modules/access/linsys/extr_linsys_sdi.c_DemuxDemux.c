
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int s; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {int i_buffer; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 int DEMUX_BUFFER_SIZE ;
 int HandleSDBuffer (TYPE_1__*,int ,int ) ;
 int VLC_SUCCESS ;
 int block_Release (TYPE_2__*) ;
 TYPE_2__* vlc_stream_Block (int ,int ) ;

__attribute__((used)) static int DemuxDemux( demux_t *p_demux )
{
    block_t *p_block = vlc_stream_Block( p_demux->s, DEMUX_BUFFER_SIZE );
    int i_ret;

    if ( p_block == ((void*)0) )
        return 0;

    i_ret = HandleSDBuffer( p_demux, p_block->p_buffer, p_block->i_buffer );
    block_Release( p_block );

    return ( i_ret == VLC_SUCCESS );
}
