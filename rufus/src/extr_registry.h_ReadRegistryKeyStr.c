
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int REG_SZ ;
 int _GetRegistryKey (int ,char const*,int ,int ,scalar_t__) ;

__attribute__((used)) static __inline char* ReadRegistryKeyStr(HKEY root, const char* key) {
 static char str[512];
 str[0] = 0;
 _GetRegistryKey(root, key, REG_SZ, (LPBYTE)str, (DWORD)sizeof(str)-1);
 return str;
}
