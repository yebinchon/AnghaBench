
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; } ;
typedef TYPE_1__ node_plambda ;
typedef int node ;



node*
node_plambda_add(node* n, node* lambda)
{
  node_plambda* l = (node_plambda*)n;
  while (l->next) {
    l = (node_plambda*)l->next;
  }
  l->next = lambda;
  return n;
}
