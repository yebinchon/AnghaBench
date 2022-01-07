
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int REGKEY_HKCU ;
 int ReadIniKeyBool (char const*) ;
 int ReadRegistryKeyBool (int ,char const*) ;
 int * ini_file ;

__attribute__((used)) static __inline BOOL ReadSettingBool(const char* key) {
 return (ini_file != ((void*)0))?ReadIniKeyBool(key):ReadRegistryKeyBool(REGKEY_HKCU, key);
}
