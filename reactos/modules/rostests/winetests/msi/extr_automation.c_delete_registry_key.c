
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int REGSAM ;
typedef int * LPCSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int CHAR ;


 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyA (int ,int ,int *,int ) ;
 scalar_t__ RegOpenKeyExA (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyA (int ,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int delete_key_portable (int ,int *,int ) ;

__attribute__((used)) static UINT delete_registry_key(HKEY hkeyParent, LPCSTR subkey, REGSAM access)
{
    UINT ret;
    CHAR *string = ((void*)0);
    HKEY hkey;
    DWORD dwSize;

    ret = RegOpenKeyExA(hkeyParent, subkey, 0, access, &hkey);
    if (ret != ERROR_SUCCESS) return ret;
    ret = RegQueryInfoKeyA(hkey, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &dwSize, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (ret != ERROR_SUCCESS) return ret;
    if (!(string = HeapAlloc(GetProcessHeap(), 0, ++dwSize))) return ERROR_NOT_ENOUGH_MEMORY;

    while (RegEnumKeyA(hkey, 0, string, dwSize) == ERROR_SUCCESS)
        delete_registry_key(hkey, string, access);

    RegCloseKey(hkey);
    HeapFree(GetProcessHeap(), 0, string);
    delete_key_portable(hkeyParent, subkey, access);
    return ERROR_SUCCESS;
}
