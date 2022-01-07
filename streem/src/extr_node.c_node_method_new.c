
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * body; int * args; int type; } ;
typedef TYPE_1__ node_lambda ;
typedef int node ;


 int NODE_LAMBDA ;
 TYPE_1__* malloc (int) ;
 int node_args_add (int *,int ) ;
 int * node_args_new () ;
 int node_args_prepend (int *,int ) ;
 int node_str_new (char*,int) ;

node*
node_method_new(node* args, node* compstmt)
{
  node_lambda* lambda = malloc(sizeof(node_lambda));
  lambda->type = NODE_LAMBDA;
  if (args) {
    node_args_prepend(args, node_str_new("self", 4));
  }
  else {
    args = node_args_new();
    node_args_add(args, node_str_new("self", 4));
  }
  lambda->args = args;
  lambda->body = compstmt;
  return (node*)lambda;
}
