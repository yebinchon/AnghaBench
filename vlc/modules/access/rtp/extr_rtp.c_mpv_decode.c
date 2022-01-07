
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int demux_t ;
struct TYPE_5__ {int i_buffer; int* p_buffer; } ;
typedef TYPE_1__ block_t ;


 int block_Release (TYPE_1__*) ;
 int codec_decode (int *,void*,TYPE_1__*) ;

__attribute__((used)) static void mpv_decode (demux_t *demux, void *data, block_t *block)
{
    if (block->i_buffer < 4)
    {
        block_Release (block);
        return;
    }

    block->i_buffer -= 4;
    block->p_buffer += 4;







    codec_decode (demux, data, block);
}
