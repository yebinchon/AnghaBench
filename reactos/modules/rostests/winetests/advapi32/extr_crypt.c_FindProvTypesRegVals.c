
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PSTR ;
typedef char* LPSTR ;
typedef int * LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int LMEM_ZEROINIT ;
 char* LocalAlloc (int ,int) ;
 int LocalFree (char*) ;
 int RegCloseKey (int ) ;
 int RegEnumKeyExA (int ,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegQueryInfoKeyA (int ,int *,int *,int *,int*,int*,int *,int *,int *,int *,int *,int *) ;
 int RegQueryValueExA (int ,char*,int *,int *,int *,int*) ;
 int TRUE ;
 int strlen (char*) ;

__attribute__((used)) static BOOL FindProvTypesRegVals(DWORD *pdwIndex, DWORD *pdwProvType, LPSTR *pszTypeName,
     DWORD *pcbTypeName, DWORD *pdwTypeCount)
{
 HKEY hKey;
 HKEY hSubKey;
 PSTR ch;
 LPSTR szName;
 DWORD cbName;
 BOOL ret = FALSE;

 if (RegOpenKeyA(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Cryptography\\Defaults\\Provider Types", &hKey))
  return FALSE;

 if (RegQueryInfoKeyA(hKey, ((void*)0), ((void*)0), ((void*)0), pdwTypeCount, &cbName, ((void*)0),
   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
  goto cleanup;
 cbName++;

 if (!(szName = LocalAlloc(LMEM_ZEROINIT, cbName)))
  goto cleanup;

 while (!RegEnumKeyExA(hKey, *pdwIndex, szName, &cbName, ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
 {
  cbName++;
  ch = szName + strlen(szName);

  *pdwProvType = *(--ch) - '0';
  *pdwProvType += (*(--ch) - '0') * 10;
  *pdwProvType += (*(--ch) - '0') * 100;

  if (RegOpenKeyA(hKey, szName, &hSubKey))
   break;

  if (!RegQueryValueExA(hSubKey, "TypeName", ((void*)0), ((void*)0), ((void*)0), pcbTypeName))
  {
   if (!(*pszTypeName = LocalAlloc(LMEM_ZEROINIT, *pcbTypeName)))
    break;

   if (!RegQueryValueExA(hSubKey, "TypeName", ((void*)0), ((void*)0), (LPBYTE)*pszTypeName, pcbTypeName))
   {
    ret = TRUE;
    break;
   }

   LocalFree(*pszTypeName);
  }

  RegCloseKey(hSubKey);

  (*pdwIndex)++;
 }
 RegCloseKey(hSubKey);
 LocalFree(szName);

cleanup:
 RegCloseKey(hKey);

 return ret;
}
