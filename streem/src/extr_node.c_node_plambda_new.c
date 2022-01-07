
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * body; int * cond; int * pat; int type; } ;
typedef TYPE_1__ node_plambda ;
typedef int node ;


 int NODE_PLAMBDA ;
 TYPE_1__* malloc (int) ;

node*
node_plambda_new(node* pat, node* cond)
{
  node_plambda* lambda = malloc(sizeof(node_plambda));
  lambda->type = NODE_PLAMBDA;
  lambda->pat = pat;
  lambda->cond = cond;
  lambda->body = ((void*)0);
  return (node*)lambda;
}
