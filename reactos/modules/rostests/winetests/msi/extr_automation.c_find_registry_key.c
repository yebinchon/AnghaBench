
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int REGSAM ;
typedef int * LPCSTR ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegEnumKeyA (scalar_t__,int ,int *,int ) ;
 scalar_t__ RegOpenKeyExA (scalar_t__,int *,int ,int ,scalar_t__*) ;
 scalar_t__ RegQueryInfoKeyA (scalar_t__,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ TRUE ;
 int strcmp (int *,int *) ;

__attribute__((used)) static UINT find_registry_key(HKEY hkeyParent, LPCSTR subkey, LPCSTR findkey, REGSAM access, HKEY *phkey)
{
    UINT ret;
    CHAR *string = ((void*)0);
    int idx = 0;
    HKEY hkey;
    DWORD dwSize;
    BOOL found = FALSE;

    *phkey = 0;

    ret = RegOpenKeyExA(hkeyParent, subkey, 0, access, &hkey);
    if (ret != ERROR_SUCCESS) return ret;
    ret = RegQueryInfoKeyA(hkey, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &dwSize, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (ret != ERROR_SUCCESS) return ret;
    if (!(string = HeapAlloc(GetProcessHeap(), 0, ++dwSize))) return ERROR_NOT_ENOUGH_MEMORY;

    while (!found &&
           RegEnumKeyA(hkey, idx++, string, dwSize) == ERROR_SUCCESS)
    {
        if (!strcmp(string, findkey))
        {
            *phkey = hkey;
            found = TRUE;
        }
        else if (find_registry_key(hkey, string, findkey, access, phkey) == ERROR_SUCCESS) found = TRUE;
    }

    if (*phkey != hkey) RegCloseKey(hkey);
    HeapFree(GetProcessHeap(), 0, string);
    return (found ? ERROR_SUCCESS : ERROR_FILE_NOT_FOUND);
}
