
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void demux_t ;
struct TYPE_3__ {int* p_buffer; int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int VLC_UNUSED (void*) ;

__attribute__((used)) static void stream_header (demux_t *demux, void *data, block_t *block)
{
    VLC_UNUSED(demux);
    VLC_UNUSED(data);
    if(block->p_buffer[1] & 0x80)
    {
        block->i_flags |= BLOCK_FLAG_DISCONTINUITY;
    }
}
