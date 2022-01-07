
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int BOOL ;


 int ini_file ;
 int * set_token_data_file (char const*,char*,int ) ;
 int static_sprintf (char*,char*,int ) ;

__attribute__((used)) static __inline BOOL WriteIniKey32(const char* key, int32_t val) {
 char str[12];
 static_sprintf(str, "%d", val);
 return (set_token_data_file(key, str, ini_file) != ((void*)0));
}
