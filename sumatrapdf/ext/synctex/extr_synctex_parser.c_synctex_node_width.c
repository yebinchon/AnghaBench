
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_node_t ;


 int SYNCTEX_WIDTH (int ) ;

int synctex_node_width(synctex_node_t node){
 if (!node) {
  return 0;
 }
 return SYNCTEX_WIDTH(node);
}
