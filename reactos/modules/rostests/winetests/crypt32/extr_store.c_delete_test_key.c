
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HKEY ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyW (int ,char const*) ;
 int RegEnumKeyExW (int ,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int ,int *) ;
 int RegQueryInfoKeyW (int ,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void delete_test_key(void)
{
    HKEY root_key, test_key;
    static const WCHAR SysCertW[] = {'S','o','f','t','w','a','r','e','\\','M','i','c','r','o','s','o','f','t','\\',
        'S','y','s','t','e','m','C','e','r','t','i','f','i','c','a','t','e','s',0};
    static const WCHAR WineTestW[] = {'W','i','n','e','T','e','s','t',0};
    WCHAR subkey_name[32];
    DWORD num_subkeys, subkey_name_len;
    int idx;

    if (RegOpenKeyExW(HKEY_CURRENT_USER, SysCertW, 0, KEY_READ, &root_key))
        return;
    if (RegOpenKeyExW(root_key, WineTestW, 0, KEY_READ, &test_key))
    {
        RegCloseKey(root_key);
        return;
    }
    RegQueryInfoKeyW(test_key, ((void*)0), ((void*)0), ((void*)0), &num_subkeys, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    for (idx = num_subkeys; idx-- > 0;)
    {
        subkey_name_len = ARRAY_SIZE(subkey_name);
        RegEnumKeyExW(test_key, idx, subkey_name, &subkey_name_len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        RegDeleteKeyW(test_key, subkey_name);
    }
    RegCloseKey(test_key);
    RegDeleteKeyW(root_key, WineTestW);
    RegCloseKey(root_key);
}
