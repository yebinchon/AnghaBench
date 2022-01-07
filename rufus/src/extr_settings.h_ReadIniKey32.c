
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int free (char*) ;
 char* get_token_data_file (char const*,int ) ;
 int ini_file ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static __inline int32_t ReadIniKey32(const char* key) {
 int32_t val = 0;
 char* str = get_token_data_file(key, ini_file);
 if (str != ((void*)0)) {
  val = strtol(str, ((void*)0), 0);
  free(str);
 }
 return val;
}
