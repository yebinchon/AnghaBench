
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REGKEY_HKCU ;
 char* ReadIniKeyStr (char const*) ;
 char* ReadRegistryKeyStr (int ,char const*) ;
 int * ini_file ;

__attribute__((used)) static __inline char* ReadSettingStr(const char* key) {
 return (ini_file != ((void*)0))?ReadIniKeyStr(key):ReadRegistryKeyStr(REGKEY_HKCU, key);
}
