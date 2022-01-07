
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* tqent_next; } ;
struct TYPE_5__ {scalar_t__ tq_lowest_id; scalar_t__ tq_next_id; scalar_t__ tq_active; TYPE_1__ tq_task; } ;
typedef TYPE_2__ taskq_t ;



__attribute__((used)) static inline int EMPTY_TASKQ(taskq_t *tq)
{



 return (tq->tq_task.tqent_next == &tq->tq_task || tq->tq_active == 0);

}
