
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_3__ {int name; int type; } ;
typedef TYPE_1__ node_ident ;
typedef int node ;


 int NODE_IDENT ;
 TYPE_1__* malloc (int) ;

node*
node_ident_new(node_string name)
{
  node_ident* ni = malloc(sizeof(node_ident));

  ni->type = NODE_IDENT;
  ni->name = name;
  return (node*)ni;
}
