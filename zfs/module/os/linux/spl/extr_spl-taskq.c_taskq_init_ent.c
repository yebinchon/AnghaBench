
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tqent_taskq; scalar_t__ tqent_flags; int * tqent_arg; int * tqent_func; scalar_t__ tqent_id; int tqent_list; int tqent_timer; int tqent_waitq; int tqent_lock; } ;
typedef TYPE_1__ taskq_ent_t ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int *,int ) ;

void
taskq_init_ent(taskq_ent_t *t)
{
 spin_lock_init(&t->tqent_lock);
 init_waitqueue_head(&t->tqent_waitq);
 timer_setup(&t->tqent_timer, ((void*)0), 0);
 INIT_LIST_HEAD(&t->tqent_list);
 t->tqent_id = 0;
 t->tqent_func = ((void*)0);
 t->tqent_arg = ((void*)0);
 t->tqent_flags = 0;
 t->tqent_taskq = ((void*)0);
}
