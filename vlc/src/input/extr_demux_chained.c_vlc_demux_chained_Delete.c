
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int thread; int writer; } ;
typedef TYPE_1__ vlc_demux_chained_t ;


 int free (TYPE_1__*) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_stream_fifo_Close (int ) ;

void vlc_demux_chained_Delete(vlc_demux_chained_t *dc)
{
    vlc_stream_fifo_Close(dc->writer);
    vlc_join(dc->thread, ((void*)0));
    vlc_mutex_destroy(&dc->lock);
    free(dc);
}
