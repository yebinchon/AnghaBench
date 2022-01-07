
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fifo_t ;
struct vlc_stream_fifo {int eof; int * fifo; } ;
typedef int stream_t ;
typedef int block_t ;


 int block_ChainRelease (int *) ;
 int block_FifoRelease (int *) ;
 int free (struct vlc_stream_fifo*) ;
 int * vlc_fifo_DequeueAllUnlocked (int *) ;
 int vlc_fifo_Lock (int *) ;
 int vlc_fifo_Unlock (int *) ;
 struct vlc_stream_fifo* vlc_stream_fifo_Writer (int *) ;

__attribute__((used)) static void vlc_stream_fifo_Destroy(stream_t *s)
{
    struct vlc_stream_fifo *writer = vlc_stream_fifo_Writer(s);
    vlc_fifo_t *fifo = writer->fifo;
    block_t *block;
    bool closed;

    vlc_fifo_Lock(fifo);
    block = vlc_fifo_DequeueAllUnlocked(fifo);
    closed = writer->eof;
    writer->eof = 1;
    vlc_fifo_Unlock(fifo);

    block_ChainRelease(block);

    if (closed) {

        block_FifoRelease(fifo);
        free(writer);
    }
}
