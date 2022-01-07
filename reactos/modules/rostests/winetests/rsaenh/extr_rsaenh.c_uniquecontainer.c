
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int KEY_WOW64_64KEY ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char const*,int *) ;
 scalar_t__ RegOpenKeyExA (int ,char const*,int ,int,int *) ;
 int RegQueryValueExA (int ,char const*,int *,int *,int ,int*) ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,char const*) ;
 int win2k ;

__attribute__((used)) static void uniquecontainer(char *unique)
{

    static const char szContainer_md5[] = "9d20fd8d05ed2b8455d125d0bf6d6a70";
    static const char szCryptography[] = "Software\\Microsoft\\Cryptography";
    static const char szMachineGuid[] = "MachineGuid";
    HKEY hkey;
    char guid[MAX_PATH];
    DWORD size = MAX_PATH;
    HRESULT ret;


    ret = RegOpenKeyExA(HKEY_LOCAL_MACHINE, szCryptography, 0, KEY_READ | KEY_WOW64_64KEY, &hkey);
    if (ret == ERROR_ACCESS_DENIED)
    {

        RegOpenKeyA(HKEY_LOCAL_MACHINE, szCryptography, &hkey);
        win2k++;
    }
    RegQueryValueExA(hkey, szMachineGuid, ((void*)0), ((void*)0), (LPBYTE)guid, &size);
    RegCloseKey(hkey);

    if (!unique) return;
    lstrcpyA(unique, szContainer_md5);
    lstrcatA(unique, "_");
    lstrcatA(unique, guid);
}
