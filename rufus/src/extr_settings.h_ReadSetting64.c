
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int REGKEY_HKCU ;
 int ReadIniKey64 (char const*) ;
 int ReadRegistryKey64 (int ,char const*) ;
 int * ini_file ;

__attribute__((used)) static __inline int64_t ReadSetting64(const char* key) {
 return (ini_file != ((void*)0))?ReadIniKey64(key):ReadRegistryKey64(REGKEY_HKCU, key);
}
