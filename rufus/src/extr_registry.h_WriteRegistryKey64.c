
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int LONGLONG ;
typedef int HKEY ;
typedef int BOOL ;


 int SetRegistryKey64 (int ,char const*,int ) ;

__attribute__((used)) static __inline BOOL WriteRegistryKey64(HKEY root, const char* key, int64_t val) {
 LONGLONG tmp = (LONGLONG)val;
 return SetRegistryKey64(root, key, tmp);
}
