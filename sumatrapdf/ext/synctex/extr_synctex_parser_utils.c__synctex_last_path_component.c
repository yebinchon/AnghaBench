
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYNCTEX_IS_PATH_SEPARATOR (char const) ;
 int strlen (char const*) ;

const char * _synctex_last_path_component(const char * name) {
 const char * c = name+strlen(name);
 if(c>name) {
  if(!SYNCTEX_IS_PATH_SEPARATOR(*c)) {
   do {
    --c;
    if(SYNCTEX_IS_PATH_SEPARATOR(*c)) {
     return c+1;
    }
   } while(c>name);
  }
  return c;
 }
 return c;
}
