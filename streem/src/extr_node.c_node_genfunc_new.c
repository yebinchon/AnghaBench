
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_string ;
struct TYPE_3__ {int id; int type; } ;
typedef TYPE_1__ node_genfunc ;
typedef int node ;


 int NODE_GENFUNC ;
 TYPE_1__* malloc (int) ;

node*
node_genfunc_new(node_string id)
{
  node_genfunc* ngf = malloc(sizeof(node_genfunc));
  ngf->type = NODE_GENFUNC;
  ngf->id = id;
  return (node*)ngf;
}
