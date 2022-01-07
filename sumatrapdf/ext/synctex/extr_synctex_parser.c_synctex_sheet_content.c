
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef int * synctex_node_t ;
struct TYPE_3__ {int * sheet; } ;


 int * SYNCTEX_CHILD (int *) ;
 int SYNCTEX_PAGE (int *) ;
 int * SYNCTEX_SIBLING (int *) ;

synctex_node_t synctex_sheet_content(synctex_scanner_t scanner,int page) {
 if (scanner) {
  synctex_node_t sheet = scanner->sheet;
  while(sheet) {
   if (page == SYNCTEX_PAGE(sheet)) {
    return SYNCTEX_CHILD(sheet);
   }
   sheet = SYNCTEX_SIBLING(sheet);
  }
 }
 return ((void*)0);
}
