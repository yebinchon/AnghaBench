
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_node_t ;


 int SYNCTEX_DEPTH (int ) ;
 int SYNCTEX_DISPLAY (int ) ;
 int SYNCTEX_HEIGHT (int ) ;
 int SYNCTEX_HORIZ (int ) ;
 int SYNCTEX_LINE (int ) ;
 int SYNCTEX_SIBLING (int ) ;
 int SYNCTEX_TAG (int ) ;
 int SYNCTEX_VERT (int ) ;
 int SYNCTEX_WIDTH (int ) ;
 int printf (char*,int,int,int,int,int,int,int) ;

void _synctex_display_void_hbox(synctex_node_t node) {
 printf("....h%i,%i:%i,%i:%i,%i,%i\n",
  SYNCTEX_TAG(node),
  SYNCTEX_LINE(node),
  SYNCTEX_HORIZ(node),
  SYNCTEX_VERT(node),
  SYNCTEX_WIDTH(node),
  SYNCTEX_HEIGHT(node),
  SYNCTEX_DEPTH(node));
 SYNCTEX_DISPLAY(SYNCTEX_SIBLING(node));
}
