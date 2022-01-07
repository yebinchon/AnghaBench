
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int ini_file ;
 int * set_token_data_file (char const*,char const*,int ) ;

__attribute__((used)) static __inline BOOL WriteIniKeyStr(const char* key, const char* val) {
 return (set_token_data_file(key, val, ini_file) != ((void*)0));
}
