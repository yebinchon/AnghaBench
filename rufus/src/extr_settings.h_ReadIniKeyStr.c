
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* get_token_data_file (char const*,int ) ;
 int ini_file ;
 int static_strcpy (char*,char*) ;

__attribute__((used)) static __inline char* ReadIniKeyStr(const char* key) {
 static char str[512];
 char* val;
 str[0] = 0;
 val = get_token_data_file(key, ini_file);
 if (val != ((void*)0)) {
  static_strcpy(str, val);
  free(val);
 }
 return str;
}
