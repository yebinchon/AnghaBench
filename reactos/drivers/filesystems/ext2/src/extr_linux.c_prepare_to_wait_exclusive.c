
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef struct __wait_queue* wait_queue_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct __wait_queue {int task_list; int flags; } ;


 int WQ_FLAG_EXCLUSIVE ;
 int __add_wait_queue_tail (TYPE_1__*,struct __wait_queue*) ;
 scalar_t__ is_sync_wait (struct __wait_queue*) ;
 scalar_t__ list_empty (int *) ;
 int set_current_state (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
prepare_to_wait_exclusive(wait_queue_head_t *q, wait_queue_t *waiti, int state)
{
    unsigned long flags;
    struct __wait_queue *wait = *waiti;

    wait->flags |= WQ_FLAG_EXCLUSIVE;
    spin_lock_irqsave(&q->lock, flags);
    if (list_empty(&wait->task_list))
        __add_wait_queue_tail(q, wait);




    if (is_sync_wait(wait))
        set_current_state(state);
    spin_unlock_irqrestore(&q->lock, flags);
}
