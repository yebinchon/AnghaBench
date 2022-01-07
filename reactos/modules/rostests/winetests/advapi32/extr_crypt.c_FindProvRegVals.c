
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int LMEM_ZEROINIT ;
 char* LocalAlloc (int ,int) ;
 int RegCloseKey (int ) ;
 int RegEnumKeyExA (int ,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 int RegQueryInfoKeyA (int ,int *,int *,int *,int*,int*,int *,int *,int *,int *,int *,int *) ;
 int RegQueryValueExA (int ,char*,int *,int *,int ,int*) ;
 int TRUE ;

__attribute__((used)) static BOOL FindProvRegVals(DWORD dwIndex, DWORD *pdwProvType, LPSTR *pszProvName,
       DWORD *pcbProvName, DWORD *pdwProvCount)
{
 HKEY hKey;
 HKEY subkey;
 DWORD size = sizeof(DWORD);

 if (RegOpenKeyA(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Cryptography\\Defaults\\Provider", &hKey))
  return FALSE;

 RegQueryInfoKeyA(hKey, ((void*)0), ((void*)0), ((void*)0), pdwProvCount, pcbProvName,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 (*pcbProvName)++;

 if (!(*pszProvName = LocalAlloc(LMEM_ZEROINIT, *pcbProvName)))
  return FALSE;

 RegEnumKeyExA(hKey, dwIndex, *pszProvName, pcbProvName, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 (*pcbProvName)++;

 RegOpenKeyA(hKey, *pszProvName, &subkey);
 RegQueryValueExA(subkey, "Type", ((void*)0), ((void*)0), (LPBYTE)pdwProvType, &size);

 RegCloseKey(subkey);
 RegCloseKey(hKey);

 return TRUE;
}
