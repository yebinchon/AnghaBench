
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fifo_t ;
struct vlc_stream_fifo {scalar_t__ eof; int * fifo; } ;
typedef int stream_t ;
typedef int block_t ;


 int * vlc_fifo_DequeueUnlocked (int *) ;
 scalar_t__ vlc_fifo_IsEmpty (int *) ;
 int vlc_fifo_Lock (int *) ;
 int vlc_fifo_Unlock (int *) ;
 int vlc_fifo_Wait (int *) ;
 struct vlc_stream_fifo* vlc_stream_fifo_Writer (int *) ;

__attribute__((used)) static block_t *vlc_stream_fifo_Block(stream_t *s, bool *restrict eof)
{
    struct vlc_stream_fifo *sys = vlc_stream_fifo_Writer(s);
    vlc_fifo_t *fifo = sys->fifo;
    block_t *block;

    vlc_fifo_Lock(fifo);
    while (vlc_fifo_IsEmpty(fifo))
    {
        if (sys->eof)
        {
            *eof = 1;
            break;
        }
        vlc_fifo_Wait(fifo);
    }

    block = vlc_fifo_DequeueUnlocked(fifo);
    vlc_fifo_Unlock(fifo);
    return block;
}
