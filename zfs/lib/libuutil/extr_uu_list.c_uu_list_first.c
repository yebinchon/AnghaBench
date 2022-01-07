
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* uln_next; } ;
struct TYPE_6__ {TYPE_2__ ul_null_node; } ;
typedef TYPE_1__ uu_list_t ;
typedef TYPE_2__ uu_list_node_impl_t ;


 void* NODE_TO_ELEM (TYPE_1__*,TYPE_2__*) ;

void *
uu_list_first(uu_list_t *lp)
{
 uu_list_node_impl_t *n = lp->ul_null_node.uln_next;
 if (n == &lp->ul_null_node)
  return (((void*)0));
 return (NODE_TO_ELEM(lp, n));
}
