
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_stream_fifo_t ;
struct vlc_stream_fifo_private {int * writer; } ;
typedef int stream_t ;


 struct vlc_stream_fifo_private* vlc_stream_Private (int *) ;

__attribute__((used)) static vlc_stream_fifo_t *vlc_stream_fifo_Writer(stream_t *s)
{
    struct vlc_stream_fifo_private *sys = vlc_stream_Private(s);

    return sys->writer;
}
