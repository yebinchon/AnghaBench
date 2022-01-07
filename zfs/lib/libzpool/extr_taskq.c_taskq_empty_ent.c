
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tqent_next; } ;
typedef TYPE_1__ taskq_ent_t ;



int
taskq_empty_ent(taskq_ent_t *t)
{
 return (t->tqent_next == ((void*)0));
}
