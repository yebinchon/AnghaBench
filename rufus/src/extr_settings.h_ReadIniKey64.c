
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int _strtoi64 (char*,int *,int ) ;
 int free (char*) ;
 char* get_token_data_file (char const*,int ) ;
 int ini_file ;

__attribute__((used)) static __inline int64_t ReadIniKey64(const char* key) {
 int64_t val = 0;
 char* str = get_token_data_file(key, ini_file);
 if (str != ((void*)0)) {
  val = _strtoi64(str, ((void*)0), 0);
  free(str);
 }
 return val;
}
