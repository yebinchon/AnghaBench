
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_node_t ;


 int SYNCTEX_TAG (scalar_t__) ;

int synctex_node_tag(synctex_node_t node) {
 return node?SYNCTEX_TAG(node):-1;
}
