
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tqent_flags; int * tqent_arg; int * tqent_func; int * tqent_prev; int * tqent_next; } ;
typedef TYPE_1__ taskq_ent_t ;



void
taskq_init_ent(taskq_ent_t *t)
{
 t->tqent_next = ((void*)0);
 t->tqent_prev = ((void*)0);
 t->tqent_func = ((void*)0);
 t->tqent_arg = ((void*)0);
 t->tqent_flags = 0;
}
