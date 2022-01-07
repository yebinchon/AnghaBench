
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zvol_task_t ;


 int kmem_free (int *,int) ;

__attribute__((used)) static void
zvol_task_free(zvol_task_t *task)
{
 kmem_free(task, sizeof (zvol_task_t));
}
