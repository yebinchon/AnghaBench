
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* head; } ;
typedef TYPE_1__ fz_pool_node ;
typedef TYPE_1__ fz_pool ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;

void fz_drop_pool(fz_context *ctx, fz_pool *pool)
{
 fz_pool_node *node;

 if (!pool)
  return;

 node = pool->head;
 while (node)
 {
  fz_pool_node *next = node->next;
  fz_free(ctx, node);
  node = next;
 }
 fz_free(ctx, pool);
}
