
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double value; int type; } ;
typedef TYPE_1__ node_float ;
typedef int node ;


 int NODE_FLOAT ;
 TYPE_1__* malloc (int) ;

node*
node_float_new(double d)
{
  node_float* nf = malloc(sizeof(node_float));

  nf->type = NODE_FLOAT;
  nf->value = d;
  return (node*)nf;
}
