
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;
typedef int block_t ;


 int block_Release (int *) ;
 int vlc_demux_chained_Send (void*,int *) ;

__attribute__((used)) static void stream_decode (demux_t *demux, void *data, block_t *block)
{
    if (data)
        vlc_demux_chained_Send(data, block);
    else
        block_Release (block);
    (void)demux;
}
