
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_3__ {int data; int link; } ;
typedef TYPE_1__ type_pool_node_t ;


 int list_add_tail (int *,int *) ;
 int type_pool ;
 TYPE_1__* xmalloc (int) ;

type_t *alloc_type(void)
{
  type_pool_node_t *node = xmalloc(sizeof *node);
  list_add_tail(&type_pool, &node->link);
  return &node->data;
}
