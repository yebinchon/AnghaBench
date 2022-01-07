
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef int * synctex_node_t ;
struct TYPE_3__ {int * input; } ;


 char const* SYNCTEX_NAME (int *) ;
 int * SYNCTEX_SIBLING (int *) ;
 int SYNCTEX_TAG (int *) ;

const char * synctex_scanner_get_name(synctex_scanner_t scanner,int tag) {
 synctex_node_t input = ((void*)0);
 if (((void*)0) == scanner) {
  return ((void*)0);
 }
 input = scanner->input;
 do {
  if (tag == SYNCTEX_TAG(input)) {
   return (SYNCTEX_NAME(input));
  }
 } while((input = SYNCTEX_SIBLING(input)) != ((void*)0));
 return ((void*)0);
}
