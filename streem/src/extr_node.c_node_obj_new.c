
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_2__ {int ns; } ;
typedef TYPE_1__ node_array ;
typedef int node ;


 scalar_t__ node_array_new () ;

node*
node_obj_new(node* np, node_string ns)
{
  node_array* v;

  if (!np) v = (node_array*)node_array_new();
  else v = (node_array*)np;
  v->ns = ns;
  return (node*)v;
}
