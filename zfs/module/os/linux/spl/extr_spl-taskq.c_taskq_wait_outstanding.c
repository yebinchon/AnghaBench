
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int taskqid_t ;
struct TYPE_4__ {int tq_next_id; int tq_wait_waitq; } ;
typedef TYPE_1__ taskq_t ;


 int taskq_wait_outstanding_check (TYPE_1__*,int) ;
 int wait_event (int ,int ) ;

void
taskq_wait_outstanding(taskq_t *tq, taskqid_t id)
{
 id = id ? id : tq->tq_next_id - 1;
 wait_event(tq->tq_wait_waitq, taskq_wait_outstanding_check(tq, id));
}
