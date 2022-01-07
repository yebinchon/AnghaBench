
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eof; int * fifo; } ;
typedef TYPE_1__ vlc_stream_fifo_t ;
typedef int vlc_fifo_t ;


 int block_FifoRelease (int *) ;
 int free (TYPE_1__*) ;
 int vlc_fifo_Lock (int *) ;
 int vlc_fifo_Signal (int *) ;
 int vlc_fifo_Unlock (int *) ;

void vlc_stream_fifo_Close(vlc_stream_fifo_t *writer)
{
    vlc_fifo_t *fifo = writer->fifo;
    bool closed;

    vlc_fifo_Lock(fifo);
    closed = writer->eof;
    writer->eof = 1;
    vlc_fifo_Signal(fifo);
    vlc_fifo_Unlock(fifo);

    if (closed) {

        block_FifoRelease(fifo);
        free(writer);
    }
}
