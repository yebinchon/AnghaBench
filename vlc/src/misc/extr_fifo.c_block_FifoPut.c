
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_t ;
typedef int block_fifo_t ;


 int vlc_fifo_Lock (int *) ;
 int vlc_fifo_QueueUnlocked (int *,int *) ;
 int vlc_fifo_Unlock (int *) ;

void block_FifoPut(block_fifo_t *fifo, block_t *block)
{
    vlc_fifo_Lock(fifo);
    vlc_fifo_QueueUnlocked(fifo, block);
    vlc_fifo_Unlock(fifo);
}
