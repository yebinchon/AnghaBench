
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_queue {struct vlc_h2_frame** last; } ;
struct vlc_h2_output {scalar_t__ size; int lock; int wait; scalar_t__ failed; } ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;


 scalar_t__ VLC_H2_MAX_QUEUE ;
 int assert (int ) ;
 int free (struct vlc_h2_frame*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cond_signal (int *) ;
 scalar_t__ vlc_h2_frame_size (struct vlc_h2_frame*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlc_h2_output_queue(struct vlc_h2_output *out,
                               struct vlc_h2_queue *q, struct vlc_h2_frame *f)
{
    if (unlikely(f == ((void*)0)))
        return -1;


    struct vlc_h2_frame **lastp = &f;
    size_t len = 0;

    do
    {
        struct vlc_h2_frame *n = *lastp;

        len += vlc_h2_frame_size(n);
        lastp = &n->next;
    }
    while (*lastp != ((void*)0));

    vlc_mutex_lock(&out->lock);
    if (out->failed)
        goto error;

    out->size += len;
    if (out->size >= VLC_H2_MAX_QUEUE)
    {



        out->size -= len;
        goto error;
    }

    assert(*(q->last) == ((void*)0));
    *(q->last) = f;
    q->last = lastp;
    vlc_cond_signal(&out->wait);
    vlc_mutex_unlock(&out->lock);
    return 0;

error:
    vlc_mutex_unlock(&out->lock);
    while (f != ((void*)0))
    {
        struct vlc_h2_frame *n = f->next;

        free(f);
        f = n;
    }
    return -1;
}
