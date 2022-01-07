
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sout_stream_id_sys_t ;
struct TYPE_7__ {int i_flags; int i_pts; int i_buffer; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_1__* block_Realloc (TYPE_1__*,int,int ) ;
 int rtp_packetize_common (int *,TYPE_1__*,int,int ) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rtp_packetize_simple(sout_stream_id_sys_t *id, block_t *block)
{
    bool marker = (block->i_flags & BLOCK_FLAG_DISCONTINUITY) != 0;

    block = block_Realloc(block, 12, block->i_buffer);
    if (unlikely(block == ((void*)0)))
        return VLC_ENOMEM;

    rtp_packetize_common(id, block, marker, block->i_pts);
    rtp_packetize_send(id, block);
    return VLC_SUCCESS;
}
