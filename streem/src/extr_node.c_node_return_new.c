
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rv; int type; } ;
typedef TYPE_1__ node_return ;
typedef int node ;


 int NODE_RETURN ;
 TYPE_1__* malloc (int) ;

node*
node_return_new(node* value)
{
  node_return* nreturn = malloc(sizeof(node_return));
  nreturn->type = NODE_RETURN;
  nreturn->rv = value;
  return (node*)nreturn;
}
