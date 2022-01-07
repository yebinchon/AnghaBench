
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int position; scalar_t__ time; scalar_t__ length; } ;
struct TYPE_8__ {int lock; int * writer; int reader; int thread; int name; int * out; TYPE_1__ stats; } ;
typedef TYPE_2__ vlc_demux_chained_t ;
typedef int es_out_t ;


 int VLC_THREAD_PRIORITY_INPUT ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_2__*,int ) ;
 int vlc_demux_chained_Thread ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_stream_Delete (int ) ;
 int vlc_stream_fifo_Close (int *) ;
 int * vlc_stream_fifo_New (int *,int *) ;

vlc_demux_chained_t *vlc_demux_chained_New(vlc_object_t *parent,
                                           const char *name, es_out_t *out)
{
    vlc_demux_chained_t *dc = malloc(sizeof (*dc) + strlen(name) + 1);
    if (unlikely(dc == ((void*)0)))
        return ((void*)0);

    dc->writer = vlc_stream_fifo_New(parent, &dc->reader);
    if (dc->writer == ((void*)0))
    {
        free(dc);
        return ((void*)0);
    }

    dc->stats.position = 0.;
    dc->stats.length = 0;
    dc->stats.time = 0;
    dc->out = out;
    strcpy(dc->name, name);

    vlc_mutex_init(&dc->lock);

    if (vlc_clone(&dc->thread, vlc_demux_chained_Thread, dc,
                  VLC_THREAD_PRIORITY_INPUT))
    {
        vlc_stream_Delete(dc->reader);
        vlc_stream_fifo_Close(dc->writer);
        vlc_mutex_destroy(&dc->lock);
        free(dc);
        dc = ((void*)0);
    }
    return dc;
}
