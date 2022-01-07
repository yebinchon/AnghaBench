
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tqent_list; } ;
typedef TYPE_1__ taskq_ent_t ;


 int list_empty (int *) ;

int
taskq_empty_ent(taskq_ent_t *t)
{
 return (list_empty(&t->tqent_list));
}
