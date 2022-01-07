
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* opt_else; void* then; int * cond; int type; } ;
typedef TYPE_1__ node_if ;
typedef int node ;


 int NODE_IF ;
 void* cond_body (int *) ;
 TYPE_1__* malloc (int) ;

node*
node_if_new(node* cond, node* then, node* opt_else)
{
  node_if* nif = malloc(sizeof(node_if));
  nif->type = NODE_IF;
  nif->cond = cond;
  nif->then = cond_body(then);
  nif->opt_else = cond_body(opt_else);
  return (node*)nif;
}
