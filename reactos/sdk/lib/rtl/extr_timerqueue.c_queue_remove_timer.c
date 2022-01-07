
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_queue {scalar_t__ event; int timers; scalar_t__ quit; } ;
struct queue_timer {scalar_t__ runcount; int destroy; scalar_t__ event; int entry; struct timer_queue* q; } ;


 int NtSetEvent (scalar_t__,int *) ;
 int RtlFreeHeap (int ,int ,struct queue_timer*) ;
 int RtlGetProcessHeap () ;
 int assert (int) ;
 scalar_t__ list_empty (int *) ;
 int list_remove (int *) ;

__attribute__((used)) static void queue_remove_timer(struct queue_timer *t)
{



    struct timer_queue *q = t->q;

    assert(t->runcount == 0);
    assert(t->destroy);

    list_remove(&t->entry);
    if (t->event)
        NtSetEvent(t->event, ((void*)0));
    RtlFreeHeap(RtlGetProcessHeap(), 0, t);

    if (q->quit && list_empty(&q->timers))
        NtSetEvent(q->event, ((void*)0));
}
