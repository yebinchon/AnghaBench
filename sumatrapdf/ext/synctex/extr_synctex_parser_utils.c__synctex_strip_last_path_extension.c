
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char*,char*) ;

void _synctex_strip_last_path_extension(char * string) {
 if(((void*)0) != string){
  char * last_component = ((void*)0);
  char * last_extension = ((void*)0);
  char * next = ((void*)0);

  if(((void*)0) == (last_component = strstr(string,"/"))){
   last_component = string;
  } else {
   ++last_component;
   while((next = strstr(last_component,"/"))){
    last_component = next+1;
   }
  }







  if((last_extension = strstr(last_component,"."))){
   ++last_extension;
   while((next = strstr(last_extension,"."))){
    last_extension = next+1;
   }
   --last_extension;
   if(last_extension>last_component){
    last_extension[0] = '\0';
   }
  }
 }
}
