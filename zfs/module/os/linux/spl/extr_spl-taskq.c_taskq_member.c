
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int taskq_t ;
typedef int kthread_t ;


 int taskq_tsd ;
 scalar_t__ tsd_get_by_thread (int ,int *) ;

int
taskq_member(taskq_t *tq, kthread_t *t)
{
 return (tq == (taskq_t *)tsd_get_by_thread(taskq_tsd, t));
}
