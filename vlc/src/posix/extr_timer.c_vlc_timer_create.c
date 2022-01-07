
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vlc_timer* vlc_timer_t ;
struct vlc_timer {void (* func ) (void*) ;int lock; int reschedule; int thread; int overruns; scalar_t__ interval; scalar_t__ value; void* data; } ;


 int ENOMEM ;
 int VLC_THREAD_PRIORITY_INPUT ;
 int assert (void (*) (void*)) ;
 int atomic_init (int *,int ) ;
 int free (struct vlc_timer*) ;
 struct vlc_timer* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_clone (int *,int ,struct vlc_timer*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_timer_thread ;

int vlc_timer_create (vlc_timer_t *id, void (*func) (void *), void *data)
{
    struct vlc_timer *timer = malloc (sizeof (*timer));

    if (unlikely(timer == ((void*)0)))
        return ENOMEM;
    vlc_mutex_init (&timer->lock);
    vlc_cond_init (&timer->reschedule);
    assert (func);
    timer->func = func;
    timer->data = data;
    timer->value = 0;
    timer->interval = 0;
    atomic_init(&timer->overruns, 0);

    if (vlc_clone (&timer->thread, vlc_timer_thread, timer,
                   VLC_THREAD_PRIORITY_INPUT))
    {
        vlc_cond_destroy (&timer->reschedule);
        vlc_mutex_destroy (&timer->lock);
        free (timer);
        return ENOMEM;
    }

    *id = timer;
    return 0;
}
