
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGLONG ;
typedef int HKEY ;
typedef int BOOL ;


 int GetRegistryKey64 (int ,char const*,int *) ;

__attribute__((used)) static __inline BOOL CheckRegistryKey64(HKEY root, const char* key) {
 LONGLONG val;
 return GetRegistryKey64(root, key, &val);
}
