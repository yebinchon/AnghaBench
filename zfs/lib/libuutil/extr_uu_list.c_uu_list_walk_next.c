
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ulw_list; } ;
typedef TYPE_1__ uu_list_walk_t ;
typedef int uu_list_t ;
typedef int uu_list_node_impl_t ;


 void* NODE_TO_ELEM (int *,int *) ;
 int * list_walk_advance (TYPE_1__*,int *) ;

void *
uu_list_walk_next(uu_list_walk_t *wp)
{
 uu_list_t *lp = wp->ulw_list;
 uu_list_node_impl_t *np = list_walk_advance(wp, lp);

 if (np == ((void*)0))
  return (((void*)0));

 return (NODE_TO_ELEM(lp, np));
}
