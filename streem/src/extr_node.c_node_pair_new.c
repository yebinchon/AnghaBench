
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_3__ {int * value; int key; int type; } ;
typedef TYPE_1__ node_pair ;
typedef int node ;


 int NODE_PAIR ;
 TYPE_1__* malloc (int) ;

node*
node_pair_new(node_string key, node* value)
{
  node_pair* npair = malloc(sizeof(node_pair));
  npair->type = NODE_PAIR;
  npair->key = key;
  npair->value = value;
  return (node*)npair;
}
