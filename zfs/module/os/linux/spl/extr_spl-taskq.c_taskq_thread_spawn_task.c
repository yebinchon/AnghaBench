
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tq_lock; int tq_nspawn; int tq_lock_class; } ;
typedef TYPE_1__ taskq_t ;


 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * taskq_thread_create (TYPE_1__*) ;

__attribute__((used)) static void
taskq_thread_spawn_task(void *arg)
{
 taskq_t *tq = (taskq_t *)arg;
 unsigned long flags;

 if (taskq_thread_create(tq) == ((void*)0)) {

  spin_lock_irqsave_nested(&tq->tq_lock, flags,
      tq->tq_lock_class);
  tq->tq_nspawn--;
  spin_unlock_irqrestore(&tq->tq_lock, flags);
 }
}
