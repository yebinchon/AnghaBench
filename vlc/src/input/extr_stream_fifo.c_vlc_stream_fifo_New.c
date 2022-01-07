
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_stream_fifo {int eof; int * fifo; } ;
typedef struct vlc_stream_fifo vlc_stream_fifo_t ;
typedef int vlc_object_t ;
struct vlc_stream_fifo_private {struct vlc_stream_fifo* writer; } ;
struct TYPE_5__ {int pf_control; int * pf_seek; int pf_block; } ;
typedef TYPE_1__ stream_t ;


 int * block_FifoNew () ;
 int block_FifoRelease (int *) ;
 int free (struct vlc_stream_fifo*) ;
 struct vlc_stream_fifo* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_stream_CustomNew (int *,int ,int,char*) ;
 struct vlc_stream_fifo_private* vlc_stream_Private (TYPE_1__*) ;
 int vlc_stream_fifo_Block ;
 int vlc_stream_fifo_Control ;
 int vlc_stream_fifo_Destroy ;

vlc_stream_fifo_t *vlc_stream_fifo_New(vlc_object_t *parent, stream_t **reader)
{
    struct vlc_stream_fifo *writer = malloc(sizeof (*writer));
    if (unlikely(writer == ((void*)0)))
        return ((void*)0);

    writer->fifo = block_FifoNew();
    if (unlikely(writer->fifo == ((void*)0))) {
        free(writer);
        return ((void*)0);
    }
    writer->eof = 0;

    struct vlc_stream_fifo_private *sys;
    stream_t *s = vlc_stream_CustomNew(parent, vlc_stream_fifo_Destroy,
                                       sizeof (*sys), "stream");
    if (unlikely(s == ((void*)0))) {
        block_FifoRelease(writer->fifo);
        free(writer);
        return ((void*)0);
    }

    sys = vlc_stream_Private(s);
    sys->writer = writer;
    s->pf_block = vlc_stream_fifo_Block;
    s->pf_seek = ((void*)0);
    s->pf_control = vlc_stream_fifo_Control;
    *reader = s;
    return writer;
}
