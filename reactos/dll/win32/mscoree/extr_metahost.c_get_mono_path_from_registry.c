
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version ;
typedef char WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char const*,int ,int *,int ,int*) ;
 int find_mono_dll (scalar_t__,char*,int) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;

__attribute__((used)) static BOOL get_mono_path_from_registry(LPWSTR path, int abi_version)
{
    static const WCHAR mono_key[] = {'S','o','f','t','w','a','r','e','\\','N','o','v','e','l','l','\\','M','o','n','o',0};
    static const WCHAR defaul_clr[] = {'D','e','f','a','u','l','t','C','L','R',0};
    static const WCHAR install_root[] = {'S','d','k','I','n','s','t','a','l','l','R','o','o','t',0};
    static const WCHAR slash[] = {'\\',0};

    WCHAR version[64], version_key[MAX_PATH];
    DWORD len;
    HKEY key;
    WCHAR dll_path[MAX_PATH];

    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, mono_key, 0, KEY_READ, &key))
        return FALSE;

    len = sizeof(version);
    if (RegQueryValueExW(key, defaul_clr, 0, ((void*)0), (LPBYTE)version, &len))
    {
        RegCloseKey(key);
        return FALSE;
    }
    RegCloseKey(key);

    lstrcpyW(version_key, mono_key);
    lstrcatW(version_key, slash);
    lstrcatW(version_key, version);

    if (RegOpenKeyExW(HKEY_LOCAL_MACHINE, version_key, 0, KEY_READ, &key))
        return FALSE;

    len = sizeof(WCHAR) * MAX_PATH;
    if (RegQueryValueExW(key, install_root, 0, ((void*)0), (LPBYTE)path, &len))
    {
        RegCloseKey(key);
        return FALSE;
    }
    RegCloseKey(key);

    return find_mono_dll(path, dll_path, abi_version);
}
