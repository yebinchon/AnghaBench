
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* synctex_node_t ;
struct TYPE_8__ {TYPE_1__* class; } ;
struct TYPE_7__ {scalar_t__ type; } ;


 TYPE_2__* SYNCTEX_PARENT (TYPE_2__*) ;
 scalar_t__ synctex_node_type_sheet ;

synctex_node_t synctex_node_sheet(synctex_node_t node)
{
 while(node && node->class->type != synctex_node_type_sheet) {
  node = SYNCTEX_PARENT(node);
 }

 return node;
}
