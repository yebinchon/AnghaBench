
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * args; int * func; int type; } ;
typedef TYPE_1__ node_fcall ;
typedef int node ;


 int NODE_FCALL ;
 TYPE_1__* malloc (int) ;
 int * node_array_new () ;
 int node_nodes_add (int *,int *) ;

node*
node_fcall_new(node* func, node* args, node* blk)
{
  node_fcall* ncall = malloc(sizeof(node_fcall));
  ncall->type = NODE_FCALL;
  ncall->func = func;
  if (!args) args = node_array_new();
  if (blk) {
    node_nodes_add(args, blk);
  }
  ncall->args = args;
  return (node*)ncall;
}
