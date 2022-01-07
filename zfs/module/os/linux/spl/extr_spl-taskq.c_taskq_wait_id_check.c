
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int taskqid_t ;
struct TYPE_4__ {int tq_lock; int tq_lock_class; } ;
typedef TYPE_1__ taskq_t ;


 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * taskq_find (TYPE_1__*,int ) ;

__attribute__((used)) static int
taskq_wait_id_check(taskq_t *tq, taskqid_t id)
{
 int rc;
 unsigned long flags;

 spin_lock_irqsave_nested(&tq->tq_lock, flags, tq->tq_lock_class);
 rc = (taskq_find(tq, id) == ((void*)0));
 spin_unlock_irqrestore(&tq->tq_lock, flags);

 return (rc);
}
