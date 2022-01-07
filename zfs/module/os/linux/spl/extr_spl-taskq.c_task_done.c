
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tq_nalloc; scalar_t__ tq_minalloc; int tq_free_list; int tqent_list; scalar_t__ tqent_flags; int * tqent_arg; int * tqent_func; int tqent_id; int tqent_waitq; } ;
typedef TYPE_1__ taskq_t ;
typedef TYPE_1__ taskq_ent_t ;


 int ASSERT (TYPE_1__*) ;
 int TASKQID_INVALID ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int task_free (TYPE_1__*,TYPE_1__*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void
task_done(taskq_t *tq, taskq_ent_t *t)
{
 ASSERT(tq);
 ASSERT(t);


 wake_up_all(&t->tqent_waitq);

 list_del_init(&t->tqent_list);

 if (tq->tq_nalloc <= tq->tq_minalloc) {
  t->tqent_id = TASKQID_INVALID;
  t->tqent_func = ((void*)0);
  t->tqent_arg = ((void*)0);
  t->tqent_flags = 0;

  list_add_tail(&t->tqent_list, &tq->tq_free_list);
 } else {
  task_free(tq, t);
 }
}
