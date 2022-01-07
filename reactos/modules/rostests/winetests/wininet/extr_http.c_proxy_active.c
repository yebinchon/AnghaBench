
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,int *,int ,scalar_t__*) ;

__attribute__((used)) static BOOL proxy_active(void)
{
    HKEY internet_settings;
    DWORD proxy_enable;
    DWORD size;

    if (RegOpenKeyExA(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings",
                      0, KEY_QUERY_VALUE, &internet_settings) != ERROR_SUCCESS)
        return FALSE;

    size = sizeof(DWORD);
    if (RegQueryValueExA(internet_settings, "ProxyEnable", ((void*)0), ((void*)0), (LPBYTE) &proxy_enable, &size) != ERROR_SUCCESS)
        proxy_enable = 0;

    RegCloseKey(internet_settings);

    return proxy_enable != 0;
}
