
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int SetRegistryKey32 (int ,char const*,int ) ;

__attribute__((used)) static __inline BOOL WriteRegistryKey32(HKEY root, const char* key, int32_t val) {
 DWORD tmp = (DWORD)val;
 return SetRegistryKey32(root, key, tmp);
}
