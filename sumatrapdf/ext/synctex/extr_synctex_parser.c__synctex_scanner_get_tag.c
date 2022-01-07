
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef int * synctex_node_t ;
struct TYPE_3__ {int * input; } ;


 int SYNCTEX_NAME (int *) ;
 int * SYNCTEX_SIBLING (int *) ;
 int SYNCTEX_TAG (int *) ;
 scalar_t__ _synctex_is_equivalent_file_name (char const*,int ) ;

int _synctex_scanner_get_tag(synctex_scanner_t scanner,const char * name) {
 synctex_node_t input = ((void*)0);
 if (((void*)0) == scanner) {
  return 0;
 }
 input = scanner->input;
 do {
  if (_synctex_is_equivalent_file_name(name,(SYNCTEX_NAME(input)))) {
   return SYNCTEX_TAG(input);
  }
 } while((input = SYNCTEX_SIBLING(input)) != ((void*)0));
 return 0;
}
