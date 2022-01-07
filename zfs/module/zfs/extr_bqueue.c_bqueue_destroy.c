
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bq_lock; int bq_list; int bq_pop_cv; int bq_add_cv; int bq_size; } ;
typedef TYPE_1__ bqueue_t ;


 int ASSERT0 (int ) ;
 int cv_destroy (int *) ;
 int list_destroy (int *) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
bqueue_destroy(bqueue_t *q)
{
 mutex_enter(&q->bq_lock);
 ASSERT0(q->bq_size);
 cv_destroy(&q->bq_add_cv);
 cv_destroy(&q->bq_pop_cv);
 list_destroy(&q->bq_list);
 mutex_exit(&q->bq_lock);
 mutex_destroy(&q->bq_lock);
}
