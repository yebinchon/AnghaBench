
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ taskqid_t ;
struct TYPE_3__ {scalar_t__ tq_lowest_id; int tq_lock; int tq_lock_class; } ;
typedef TYPE_1__ taskq_t ;


 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
taskq_wait_outstanding_check(taskq_t *tq, taskqid_t id)
{
 int rc;
 unsigned long flags;

 spin_lock_irqsave_nested(&tq->tq_lock, flags, tq->tq_lock_class);
 rc = (id < tq->tq_lowest_id);
 spin_unlock_irqrestore(&tq->tq_lock, flags);

 return (rc);
}
