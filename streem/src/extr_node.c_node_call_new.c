
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_3__ {int * args; int ident; int type; } ;
typedef TYPE_1__ node_call ;
typedef int node ;


 int NODE_CALL ;
 TYPE_1__* malloc (int) ;
 int * node_array_new () ;
 int node_nodes_add (int *,int *) ;
 int node_nodes_prepend (int *,int *) ;

node*
node_call_new(node_string ident, node* recv, node* args, node* blk)
{
  node_call* ncall = malloc(sizeof(node_call));
  ncall->type = NODE_CALL;
  ncall->ident = ident;
  if (!args) args = node_array_new();
  if (recv) {
    node_nodes_prepend(args, recv);
  }
  if (blk) {
    node_nodes_add(args, blk);
  }
  ncall->args = args;
  return (node*)ncall;
}
