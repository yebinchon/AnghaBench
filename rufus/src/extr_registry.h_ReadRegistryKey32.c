
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int HKEY ;
typedef int DWORD ;


 int GetRegistryKey32 (int ,char const*,int *) ;

__attribute__((used)) static __inline int32_t ReadRegistryKey32(HKEY root, const char* key) {
 DWORD val;
 GetRegistryKey32(root, key, &val);
 return (int32_t)val;
}
