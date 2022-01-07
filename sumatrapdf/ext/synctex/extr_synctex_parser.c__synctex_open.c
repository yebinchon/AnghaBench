
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_io_mode_t ;
typedef scalar_t__ synctex_bool_t ;
typedef int gzFile ;


 int SYNCTEX_IS_PATH_SEPARATOR (char) ;
 int __synctex_open (char const*,char**,int *,scalar_t__,int *) ;
 char* _synctex_last_path_component (char const*) ;
 scalar_t__ _synctex_path_is_absolute (char const*) ;
 scalar_t__ malloc (size_t) ;
 char* strcat (char*,char const*) ;
 char* strcpy (char*,char const*) ;
 int strlen (char const*) ;

int _synctex_open(const char * output, const char * build_directory, char ** synctex_name_ref, gzFile * file_ref, synctex_bool_t add_quotes, synctex_io_mode_t * io_mode_ref) {


 int result = __synctex_open(output,synctex_name_ref,file_ref,add_quotes,io_mode_ref);
 if ((result || !*file_ref) && build_directory && strlen(build_directory)) {
  char * build_output;
  const char *lpc;
  size_t size;
  synctex_bool_t is_absolute;
  build_output = ((void*)0);
  lpc = _synctex_last_path_component(output);
  size = strlen(build_directory)+strlen(lpc)+2;
  is_absolute = _synctex_path_is_absolute(build_directory);
  if (!is_absolute) {
   size += strlen(output);
  }
  if ((build_output = (char *)malloc(size))) {
   if (is_absolute) {
    build_output[0] = '\0';
   } else {
    if (build_output != strcpy(build_output,output)) {
     return -4;
    }
    build_output[lpc-output]='\0';
   }
   if (build_output == strcat(build_output,build_directory)) {

    if (!SYNCTEX_IS_PATH_SEPARATOR(build_output[strlen(build_directory)-1])) {
     if (build_output != strcat(build_output,"/")) {
      return -2;
     }
    }

    if (build_output != strcat(build_output,lpc)) {
     return -3;
    }
    return __synctex_open(build_output,synctex_name_ref,file_ref,add_quotes,io_mode_ref);
   }
  }
  return -1;
 }
 return result;


}
