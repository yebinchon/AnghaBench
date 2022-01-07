
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_t ;
typedef int block_fifo_t ;


 int block_ChainRelease (int *) ;
 int * vlc_fifo_DequeueAllUnlocked (int *) ;
 int vlc_fifo_Lock (int *) ;
 int vlc_fifo_Unlock (int *) ;

void block_FifoEmpty(block_fifo_t *fifo)
{
    block_t *block;

    vlc_fifo_Lock(fifo);
    block = vlc_fifo_DequeueAllUnlocked(fifo);
    vlc_fifo_Unlock(fifo);
    block_ChainRelease(block);
}
