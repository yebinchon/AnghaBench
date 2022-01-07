
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int key; int object; TYPE_1__* klass; } ;
typedef TYPE_2__ deadlock_test_t ;
struct TYPE_3__ {int * (* get_user_data ) (int ,int *) ;} ;


 int g_assert (int) ;
 int * stub1 (int ,int *) ;

__attribute__((used)) static void free_deadlock_test (void *p)
{
  deadlock_test_t *t = (deadlock_test_t *) p;

  g_assert (((void*)0) == t->klass->get_user_data (t->object, &t->key));
}
