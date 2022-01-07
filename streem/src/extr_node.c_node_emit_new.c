
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * emit; int type; } ;
typedef TYPE_1__ node_emit ;
typedef int node ;


 int NODE_EMIT ;
 TYPE_1__* malloc (int) ;

node*
node_emit_new(node* value)
{
  node_emit* ne = malloc(sizeof(node_emit));
  ne->type = NODE_EMIT;
  ne->emit = value;
  return (node*)ne;
}
