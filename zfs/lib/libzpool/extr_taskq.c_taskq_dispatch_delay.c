
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int taskqid_t ;
typedef int taskq_t ;
typedef int task_func_t ;
typedef int clock_t ;



taskqid_t
taskq_dispatch_delay(taskq_t *tq, task_func_t func, void *arg, uint_t tqflags,
    clock_t expire_time)
{
 return (0);
}
