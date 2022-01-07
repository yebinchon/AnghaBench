
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int REGKEY_HKCU ;
 int WriteIniKeyBool (char const*,int ) ;
 int WriteRegistryKeyBool (int ,char const*,int ) ;
 int * ini_file ;

__attribute__((used)) static __inline BOOL WriteSettingBool(const char* key, BOOL val) {
 return (ini_file != ((void*)0))?WriteIniKeyBool(key, val):WriteRegistryKeyBool(REGKEY_HKCU, key, val);
}
