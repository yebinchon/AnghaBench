
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * first; int ** last; } ;
struct TYPE_3__ {int * first; int ** last; } ;
struct vlc_h2_output {int failed; TYPE_2__ queue; TYPE_1__ prio; int lock; int tls; } ;
struct vlc_h2_frame {int dummy; } ;


 scalar_t__ vlc_h2_frame_send (int ,struct vlc_h2_frame*) ;
 struct vlc_h2_frame* vlc_h2_output_dequeue (struct vlc_h2_output*) ;
 int vlc_h2_output_flush_unlocked (struct vlc_h2_output*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void *vlc_h2_output_thread(void *data)
{
    struct vlc_h2_output *out = data;
    struct vlc_h2_frame *frame;

    while ((frame = vlc_h2_output_dequeue(out)) != ((void*)0))
    {
        if (vlc_h2_frame_send(out->tls, frame))
        {

            vlc_mutex_lock(&out->lock);
            out->failed = 1;
            vlc_mutex_unlock(&out->lock);



            vlc_h2_output_flush_unlocked(out);
            out->prio.first = ((void*)0);
            out->prio.last = &out->prio.first;
            out->queue.first = ((void*)0);
            out->queue.last = &out->queue.first;
            break;
        }
    }

    return ((void*)0);
}
