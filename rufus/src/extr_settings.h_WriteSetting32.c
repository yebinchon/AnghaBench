
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int BOOL ;


 int REGKEY_HKCU ;
 int WriteIniKey32 (char const*,int ) ;
 int WriteRegistryKey32 (int ,char const*,int ) ;
 int * ini_file ;

__attribute__((used)) static __inline BOOL WriteSetting32(const char* key, int32_t val) {
 return (ini_file != ((void*)0))?WriteIniKey32(key, val):WriteRegistryKey32(REGKEY_HKCU, key, val);
}
