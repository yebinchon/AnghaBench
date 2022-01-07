
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * body; } ;
typedef TYPE_1__ node_plambda ;
typedef int node ;



node*
node_plambda_body(node* n, node* body)
{
  node_plambda* lambda = (node_plambda*)n;
  lambda->body = body;
  return (node*)lambda;
}
