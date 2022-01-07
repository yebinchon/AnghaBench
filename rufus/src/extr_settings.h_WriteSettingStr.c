
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int REGKEY_HKCU ;
 int WriteIniKeyStr (char const*,char*) ;
 int WriteRegistryKeyStr (int ,char const*,char*) ;
 int * ini_file ;

__attribute__((used)) static __inline BOOL WriteSettingStr(const char* key, char* val) {
 return (ini_file != ((void*)0))?WriteIniKeyStr(key, val):WriteRegistryKeyStr(REGKEY_HKCU, key, val);
}
