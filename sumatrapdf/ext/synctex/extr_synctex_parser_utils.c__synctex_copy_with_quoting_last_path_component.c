
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _synctex_error (char*) ;
 char* _synctex_last_path_component (char const*) ;
 char* dest ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memmove (char*,char*,int) ;
 scalar_t__ strchr (char const*,char) ;
 size_t strlen (char const*) ;
 char* strncpy (char*,char const*,size_t) ;

int _synctex_copy_with_quoting_last_path_component(const char * src, char ** dest_ref, size_t size) {
  const char * lpc;
  if(src && dest_ref) {

  (*dest_ref) = ((void*)0);
  lpc = _synctex_last_path_component(src);
  if(strlen(lpc)) {
   if(strchr(lpc,' ') && lpc[0]!='"' && lpc[strlen(lpc)-1]!='"') {




    if(strlen(src)<size) {
     if(((*dest_ref) = (char *)malloc(size+2))) {
      char * dpc = (*dest_ref) + (lpc-src);
      if((*dest_ref) != strncpy((*dest_ref),src,size)) {
       _synctex_error("!  _synctex_copy_with_quoting_last_path_component: Copy problem");
       free((*dest_ref));
       (*dest_ref) = ((void*)0);
       return -2;
      }
      memmove(dpc+1,dpc,strlen(dpc)+1);
      dpc[0]='"';
      dpc[strlen(dpc)+1]='\0';
      dpc[strlen(dpc)]='"';
      return 0;
     }
     return -1;
    }
    _synctex_error("!  _synctex_copy_with_quoting_last_path_component: Internal inconsistency");
    return -3;
   }
   return 0;
  }
  return 0;

 }
 return 1;
}
