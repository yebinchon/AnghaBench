
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int LONGLONG ;
typedef int HKEY ;


 int GetRegistryKey64 (int ,char const*,int *) ;

__attribute__((used)) static __inline int64_t ReadRegistryKey64(HKEY root, const char* key) {
 LONGLONG val;
 GetRegistryKey64(root, key, &val);
 return (int64_t)val;
}
