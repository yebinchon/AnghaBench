
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_node_t ;


 int SYNCTEX_DISPLAY (int ) ;
 char* SYNCTEX_NAME (int ) ;
 int SYNCTEX_SIBLING (int ) ;
 int SYNCTEX_TAG (int ) ;
 int printf (char*,int,char*) ;

void _synctex_display_input(synctex_node_t node) {
 printf("....Input:%i:%s\n",
  SYNCTEX_TAG(node),
  SYNCTEX_NAME(node));
 SYNCTEX_DISPLAY(SYNCTEX_SIBLING(node));
}
