
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int taskqid_t ;
typedef int taskq_t ;


 int taskq_wait (int *) ;

void
taskq_wait_outstanding(taskq_t *tq, taskqid_t id)
{
 taskq_wait(tq);
}
