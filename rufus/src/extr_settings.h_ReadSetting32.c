
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int REGKEY_HKCU ;
 int ReadIniKey32 (char const*) ;
 int ReadRegistryKey32 (int ,char const*) ;
 int * ini_file ;

__attribute__((used)) static __inline int32_t ReadSetting32(const char* key) {
 return (ini_file != ((void*)0))?ReadIniKey32(key):ReadRegistryKey32(REGKEY_HKCU, key);
}
