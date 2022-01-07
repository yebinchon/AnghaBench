
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_3__ {int * rhs; int lhs; int type; } ;
typedef TYPE_1__ node_let ;
typedef int node ;


 int NODE_LET ;
 TYPE_1__* malloc (int) ;

node*
node_let_new(node_string lhs, node* rhs)
{
  node_let* nlet = malloc(sizeof(node_let));
  nlet->type = NODE_LET;
  nlet->lhs = lhs;
  nlet->rhs = rhs;
  return (node*)nlet;
}
