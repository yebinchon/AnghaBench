
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_queue {int cs; } ;
struct queue_timer {scalar_t__ runcount; scalar_t__ destroy; struct timer_queue* q; } ;


 int RtlEnterCriticalSection (int *) ;
 int RtlLeaveCriticalSection (int *) ;
 int assert (int) ;
 int queue_remove_timer (struct queue_timer*) ;

__attribute__((used)) static void timer_cleanup_callback(struct queue_timer *t)
{
    struct timer_queue *q = t->q;
    RtlEnterCriticalSection(&q->cs);

    assert(0 < t->runcount);
    --t->runcount;

    if (t->destroy && t->runcount == 0)
        queue_remove_timer(t);

    RtlLeaveCriticalSection(&q->cs);
}
