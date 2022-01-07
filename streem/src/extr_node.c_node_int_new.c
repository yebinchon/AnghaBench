
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long value; int type; } ;
typedef TYPE_1__ node_int ;
typedef int node ;


 int NODE_INT ;
 TYPE_1__* malloc (int) ;

node*
node_int_new(long i)
{
  node_int* ni = malloc(sizeof(node_int));

  ni->type = NODE_INT;
  ni->value = i;
  return (node*)ni;
}
