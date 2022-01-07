
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int BOOL ;


 int REGKEY_HKCU ;
 int WriteIniKey64 (char const*,int ) ;
 int WriteRegistryKey64 (int ,char const*,int ) ;
 int * ini_file ;

__attribute__((used)) static __inline BOOL WriteSetting64(const char* key, int64_t val) {
 return (ini_file != ((void*)0))?WriteIniKey64(key, val):WriteRegistryKey64(REGKEY_HKCU, key, val);
}
