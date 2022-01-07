
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ITaskScheduler_Release (int ) ;
 int ITask_Release (int ) ;
 int test_task ;
 int test_task_scheduler ;

__attribute__((used)) static void cleanup_task(void)
{
    ITask_Release(test_task);
    ITaskScheduler_Release(test_task_scheduler);
}
