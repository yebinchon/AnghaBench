
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef struct __wait_queue* wait_queue_t ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct __wait_queue {int task_list; } ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int list_del_init (int *) ;
 int list_empty_careful (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_queue_destroy (struct __wait_queue*) ;

void finish_wait(wait_queue_head_t *q, wait_queue_t *waiti)
{
    unsigned long flags;
    struct __wait_queue *wait = *waiti;

    __set_current_state(TASK_RUNNING);
    if (!list_empty_careful(&wait->task_list)) {
        spin_lock_irqsave(&q->lock, flags);
        list_del_init(&wait->task_list);
        spin_unlock_irqrestore(&q->lock, flags);
    }


    wait_queue_destroy(wait);
}
