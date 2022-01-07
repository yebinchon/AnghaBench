
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * node; int type; } ;
typedef TYPE_1__ node_splat ;
typedef int node ;


 int NODE_SPLAT ;
 TYPE_1__* malloc (int) ;

node*
node_splat_new(node* n)
{
  node_splat* splat = malloc(sizeof(node_splat));
  splat->type = NODE_SPLAT;
  splat->node = n;
  return (node*)splat;
}
