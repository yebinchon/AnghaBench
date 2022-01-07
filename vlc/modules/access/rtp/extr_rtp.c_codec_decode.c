
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int es_out_id_t ;
struct TYPE_7__ {int out; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {int i_pts; int i_dts; } ;
typedef TYPE_2__ block_t ;


 int VLC_TICK_INVALID ;
 int block_Release (TYPE_2__*) ;
 int es_out_Send (int ,int *,TYPE_2__*) ;
 int es_out_SetPCR (int ,int ) ;

void codec_decode (demux_t *demux, void *data, block_t *block)
{
    if (data)
    {
        block->i_dts = VLC_TICK_INVALID;
        es_out_SetPCR(demux->out, block->i_pts);
        es_out_Send (demux->out, (es_out_id_t *)data, block);
    }
    else
        block_Release (block);
}
