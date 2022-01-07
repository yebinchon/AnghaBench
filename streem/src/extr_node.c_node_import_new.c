
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_3__ {int name; int type; } ;
typedef TYPE_1__ node_import ;
typedef int node ;


 int NODE_IMPORT ;
 TYPE_1__* malloc (int) ;

node*
node_import_new(node_string name)
{
  node_import* nimp = malloc(sizeof(node_import));
  nimp->type = NODE_IMPORT;
  nimp->name = name;
  return (node*)nimp;
}
