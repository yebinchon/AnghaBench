
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int synctex_void_box_node_t ;
typedef TYPE_1__* synctex_scanner_t ;
typedef TYPE_2__* synctex_node_t ;
typedef scalar_t__ synctex_class_t ;
struct TYPE_7__ {scalar_t__ class; } ;
struct TYPE_6__ {scalar_t__ class; } ;


 TYPE_2__* _synctex_malloc (int) ;
 int synctex_class_void_hbox ;
 scalar_t__ synctex_node_type_void_hbox ;

synctex_node_t _synctex_new_void_hbox(synctex_scanner_t scanner) {
 synctex_node_t node = _synctex_malloc(sizeof(synctex_void_box_node_t));
 if (node) {
  node->class = scanner?scanner->class+synctex_node_type_void_hbox:(synctex_class_t)&synctex_class_void_hbox;
 }
 return node;
}
