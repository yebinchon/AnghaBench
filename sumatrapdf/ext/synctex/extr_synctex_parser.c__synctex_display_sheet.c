
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_node_t ;


 int SYNCTEX_CHILD (scalar_t__) ;
 int SYNCTEX_DISPLAY (int ) ;
 int SYNCTEX_PAGE (scalar_t__) ;
 int SYNCTEX_SIBLING (scalar_t__) ;
 int printf (char*,...) ;

void _synctex_display_sheet(synctex_node_t sheet) {
 if (sheet) {
  printf("....{%i\n",SYNCTEX_PAGE(sheet));
  SYNCTEX_DISPLAY(SYNCTEX_CHILD(sheet));
  printf("....}\n");
  SYNCTEX_DISPLAY(SYNCTEX_SIBLING(sheet));
 }
}
