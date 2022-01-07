
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int writer; } ;
typedef TYPE_1__ vlc_demux_chained_t ;
typedef int block_t ;


 int vlc_stream_fifo_Queue (int ,int *) ;

void vlc_demux_chained_Send(vlc_demux_chained_t *dc, block_t *block)
{
    vlc_stream_fifo_Queue(dc->writer, block);
}
