
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_tls {int dummy; } ;
struct TYPE_4__ {int * first; int ** last; } ;
struct TYPE_3__ {int * first; int ** last; } ;
struct vlc_h2_output {int failed; int closing; int lock; int wait; int thread; scalar_t__ size; TYPE_2__ queue; TYPE_1__ prio; struct vlc_tls* tls; } ;


 int VLC_THREAD_PRIORITY_INPUT ;
 int free (struct vlc_h2_output*) ;
 struct vlc_h2_output* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_clone (int *,void* (*) (void*),struct vlc_h2_output*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 void* vlc_h2_client_output_thread (void*) ;
 void* vlc_h2_output_thread (void*) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;

struct vlc_h2_output *vlc_h2_output_create(struct vlc_tls *tls, bool client)
{
    struct vlc_h2_output *out = malloc(sizeof (*out));
    if (unlikely(out == ((void*)0)))
        return ((void*)0);

    out->tls = tls;

    out->prio.first = ((void*)0);
    out->prio.last = &out->prio.first;
    out->queue.first = ((void*)0);
    out->queue.last = &out->queue.first;
    out->size = 0;
    out->failed = 0;
    out->closing = 0;

    vlc_mutex_init(&out->lock);
    vlc_cond_init(&out->wait);

    void *(*cb)(void *) = client ? vlc_h2_client_output_thread
                                 : vlc_h2_output_thread;
    if (vlc_clone(&out->thread, cb, out, VLC_THREAD_PRIORITY_INPUT))
    {
        vlc_cond_destroy(&out->wait);
        vlc_mutex_destroy(&out->lock);
        free(out);
        out = ((void*)0);
    }
    return out;
}
