
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rhs; int op; int * lhs; int type; } ;
typedef TYPE_1__ node_op ;
typedef int node ;


 int NODE_OP ;
 TYPE_1__* malloc (int) ;
 int node_str_new (char const*,int ) ;
 int strlen (char const*) ;

node*
node_op_new(const char* op, node* lhs, node* rhs)
{
  node_op* nop = malloc(sizeof(node_op));
  nop->type = NODE_OP;
  nop->lhs = lhs;
  nop->op = node_str_new(op, strlen(op));
  nop->rhs = rhs;
  return (node*)nop;
}
