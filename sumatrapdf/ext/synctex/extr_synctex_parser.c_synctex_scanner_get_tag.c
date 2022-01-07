
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
struct TYPE_6__ {char* output; } ;


 scalar_t__ SYNCTEX_IS_PATH_SEPARATOR (char const) ;
 int _synctex_scanner_get_tag (TYPE_1__*,char const*) ;
 scalar_t__ strlen (char const*) ;
 TYPE_1__* synctex_scanner_parse (TYPE_1__*) ;

int synctex_scanner_get_tag(synctex_scanner_t scanner,const char * name) {
 size_t char_index = strlen(name);
 if ((scanner = synctex_scanner_parse(scanner)) && (0 < char_index)) {

  char_index -= 1;
  if (!SYNCTEX_IS_PATH_SEPARATOR(name[char_index])) {

   int result = _synctex_scanner_get_tag(scanner,name);
   if (result) {
    return result;
   } else {


    const char * relative = name;
    const char * ptr = scanner->output;
    while((strlen(relative) > 0) && (strlen(ptr) > 0) && (*relative == *ptr))
    {
     relative += 1;
     ptr += 1;
    }

    while(relative > name) {
     if (SYNCTEX_IS_PATH_SEPARATOR(*(relative-1))) {
      break;
     }
     relative -= 1;
    }
    if ((relative > name) && (result = _synctex_scanner_get_tag(scanner,relative))) {
     return result;
    }
    if (SYNCTEX_IS_PATH_SEPARATOR(name[0])) {


     while(0<char_index) {
      char_index -= 1;
      if (SYNCTEX_IS_PATH_SEPARATOR(name[char_index])
        && (result = _synctex_scanner_get_tag(scanner,name+char_index+1))) {
       return result;
      }
     }
    }
   }
   return result;
  }
 }
 return 0;
}
