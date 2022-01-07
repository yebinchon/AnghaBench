
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 char* get_token_data_file (char const*,int ) ;
 int ini_file ;
 int safe_free (char*) ;

__attribute__((used)) static __inline BOOL CheckIniKey(const char* key) {
 char* str = get_token_data_file(key, ini_file);
 BOOL ret = (str != ((void*)0));
 safe_free(str);
 return ret;
}
