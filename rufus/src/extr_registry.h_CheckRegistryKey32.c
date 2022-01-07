
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ GetRegistryKey32 (int ,char const*,int *) ;
 scalar_t__ SetRegistryKey32 (int ,char const*,int ) ;

__attribute__((used)) static __inline BOOL CheckRegistryKey32(HKEY root, const char* key) {
 DWORD val;
 return (GetRegistryKey32(root, key, &val) && SetRegistryKey32(root, key, val));
}
