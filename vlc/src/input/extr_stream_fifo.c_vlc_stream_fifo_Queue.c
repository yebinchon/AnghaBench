
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eof; int * fifo; } ;
typedef TYPE_1__ vlc_stream_fifo_t ;
typedef int vlc_fifo_t ;
typedef int block_t ;


 int EPIPE ;
 int block_Release (int *) ;
 int errno ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_fifo_Lock (int *) ;
 int vlc_fifo_QueueUnlocked (int *,int *) ;
 int vlc_fifo_Unlock (int *) ;

int vlc_stream_fifo_Queue(vlc_stream_fifo_t *writer, block_t *block)
{
    vlc_fifo_t *fifo = writer->fifo;

    vlc_fifo_Lock(fifo);
    if (likely(!writer->eof))
    {
        vlc_fifo_QueueUnlocked(fifo, block);
        block = ((void*)0);
    }
    vlc_fifo_Unlock(fifo);

    if (unlikely(block != ((void*)0)))
    {
        block_Release(block);
        errno = EPIPE;
        return -1;
    }
    return 0;
}
