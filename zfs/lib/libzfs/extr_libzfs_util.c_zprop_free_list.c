
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pl_user_prop; struct TYPE_4__* pl_next; } ;
typedef TYPE_1__ zprop_list_t ;


 int free (TYPE_1__*) ;

void
zprop_free_list(zprop_list_t *pl)
{
 zprop_list_t *next;

 while (pl != ((void*)0)) {
  next = pl->pl_next;
  free(pl->pl_user_prop);
  free(pl);
  pl = next;
 }
}
