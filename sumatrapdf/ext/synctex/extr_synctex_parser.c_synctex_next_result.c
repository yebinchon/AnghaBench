
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_scanner_t ;
typedef int * synctex_node_t ;


 int * SYNCTEX_CUR ;
 int * SYNCTEX_END ;
 int * SYNCTEX_START ;

synctex_node_t synctex_next_result(synctex_scanner_t scanner) {
 if (((void*)0) == SYNCTEX_CUR) {
  SYNCTEX_CUR = SYNCTEX_START;
 } else {
  SYNCTEX_CUR+=sizeof(synctex_node_t);
 }
 if (SYNCTEX_CUR<SYNCTEX_END) {
  return *(synctex_node_t*)SYNCTEX_CUR;
 } else {
  return ((void*)0);
 }
}
