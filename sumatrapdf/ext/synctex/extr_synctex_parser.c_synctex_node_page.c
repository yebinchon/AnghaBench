
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* synctex_node_t ;
struct TYPE_8__ {TYPE_1__* class; } ;
struct TYPE_7__ {scalar_t__ type; } ;


 int SYNCTEX_PAGE (TYPE_2__*) ;
 TYPE_2__* SYNCTEX_PARENT (TYPE_2__*) ;
 scalar_t__ synctex_node_type_sheet ;

int synctex_node_page(synctex_node_t node){
 synctex_node_t parent = ((void*)0);
 if (!node) {
  return -1;
 }
 parent = SYNCTEX_PARENT(node);
 while(parent) {
  node = parent;
  parent = SYNCTEX_PARENT(node);
 }
 if (node->class->type == synctex_node_type_sheet) {
  return SYNCTEX_PAGE(node);
 }
 return -1;
}
