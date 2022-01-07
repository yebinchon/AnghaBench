
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_t ;
typedef int block_fifo_t ;


 int vlc_cleanup_pop () ;
 int vlc_fifo_CleanupPush (int *) ;
 int * vlc_fifo_DequeueUnlocked (int *) ;
 scalar_t__ vlc_fifo_IsEmpty (int *) ;
 int vlc_fifo_Lock (int *) ;
 int vlc_fifo_Unlock (int *) ;
 int vlc_fifo_Wait (int *) ;
 int vlc_testcancel () ;

block_t *block_FifoGet(block_fifo_t *fifo)
{
    block_t *block;

    vlc_testcancel();

    vlc_fifo_Lock(fifo);
    while (vlc_fifo_IsEmpty(fifo))
    {
        vlc_fifo_CleanupPush(fifo);
        vlc_fifo_Wait(fifo);
        vlc_cleanup_pop();
    }
    block = vlc_fifo_DequeueUnlocked(fifo);
    vlc_fifo_Unlock(fifo);

    return block;
}
