
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKeyA (int ,char const*) ;
 scalar_t__ RegEnumKeyExA (int ,int ,char*,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExA (int const,char const*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyA (int ,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static LONG delete_tree(const HKEY key, const char *subkey)
{
    HKEY hkey;
    LONG ret;
    char *subkey_name = ((void*)0);
    DWORD max_subkey_len, subkey_len;
    static const char empty[1];

    ret = RegOpenKeyExA(key, subkey, 0, KEY_READ, &hkey);
    if (ret) return ret;

    ret = RegQueryInfoKeyA(hkey, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &max_subkey_len,
                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (ret) goto cleanup;

    max_subkey_len++;

    subkey_name = HeapAlloc(GetProcessHeap(), 0, max_subkey_len);
    if (!subkey_name)
    {
        ret = ERROR_NOT_ENOUGH_MEMORY;
        goto cleanup;
    }

    for (;;)
    {
        subkey_len = max_subkey_len;
        ret = RegEnumKeyExA(hkey, 0, subkey_name, &subkey_len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (ret == ERROR_NO_MORE_ITEMS) break;
        if (ret) goto cleanup;
        ret = delete_tree(hkey, subkey_name);
        if (ret) goto cleanup;
    }

    ret = RegDeleteKeyA(hkey, empty);

cleanup:
    HeapFree(GetProcessHeap(), 0, subkey_name);
    RegCloseKey(hkey);
    return ret;
}
