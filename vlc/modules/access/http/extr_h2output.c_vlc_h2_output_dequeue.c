
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_queue {struct vlc_h2_frame** last; struct vlc_h2_frame* first; } ;
struct vlc_h2_output {size_t size; int lock; int wait; int closing; struct vlc_h2_queue queue; struct vlc_h2_queue prio; } ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;


 int assert (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cond_wait (int *,int *) ;
 size_t vlc_h2_frame_size (struct vlc_h2_frame*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static struct vlc_h2_frame *vlc_h2_output_dequeue(struct vlc_h2_output *out)
{
    struct vlc_h2_queue *q;
    struct vlc_h2_frame *frame;
    size_t len;

    vlc_mutex_lock(&out->lock);

    for (;;)
    {
        q = &out->prio;
        if (q->first != ((void*)0))
            break;

        q = &out->queue;
        if (q->first != ((void*)0))
            break;

        if (unlikely(out->closing))
        {
            vlc_mutex_unlock(&out->lock);
            return ((void*)0);
        }

        int canc = vlc_savecancel();
        vlc_cond_wait(&out->wait, &out->lock);
        vlc_restorecancel(canc);
    }

    frame = q->first;
    q->first = frame->next;
    if (frame->next == ((void*)0))
    {
        assert(q->last == &frame->next);
        q->last = &q->first;
    }
    assert(q->last != &frame->next);

    len = vlc_h2_frame_size(frame);
    assert(out->size >= len);
    out->size -= len;

    vlc_mutex_unlock(&out->lock);

    frame->next = ((void*)0);
    return frame;
}
