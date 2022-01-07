
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int heap_free (int *) ;

__attribute__((used)) static void default_task_destr(task_t *task)
{
    heap_free(task);
}
