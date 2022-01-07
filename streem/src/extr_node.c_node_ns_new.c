
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_3__ {int * body; int name; int type; } ;
typedef TYPE_1__ node_ns ;
typedef int node ;


 int NODE_NS ;
 TYPE_1__* malloc (int) ;

node*
node_ns_new(node_string name, node* body)
{
  node_ns* newns = malloc(sizeof(node_ns));
  newns->type = NODE_NS;
  newns->name = name;
  newns->body = body;
  return (node*)newns;
}
