
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int op; int value; int name1; int name2; } ;
typedef TYPE_1__ zvol_task_t ;


 int VERIFY (int ) ;





 int zvol_create_minors_impl (int ) ;
 int zvol_remove_minors_impl (int ) ;
 int zvol_rename_minors_impl (int ,int ) ;
 int zvol_set_snapdev_impl (int ,int ) ;
 int zvol_set_volmode_impl (int ,int ) ;
 int zvol_task_free (TYPE_1__*) ;

__attribute__((used)) static void
zvol_task_cb(void *param)
{
 zvol_task_t *task = (zvol_task_t *)param;

 switch (task->op) {
 case 132:
  (void) zvol_create_minors_impl(task->name1);
  break;
 case 131:
  zvol_remove_minors_impl(task->name1);
  break;
 case 130:
  zvol_rename_minors_impl(task->name1, task->name2);
  break;
 case 129:
  zvol_set_snapdev_impl(task->name1, task->value);
  break;
 case 128:
  zvol_set_volmode_impl(task->name1, task->value);
  break;
 default:
  VERIFY(0);
  break;
 }

 zvol_task_free(task);
}
