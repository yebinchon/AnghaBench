
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHIMGVW_SETTINGS ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,int *,int ,int*) ;
 int TRUE ;
 int _T (char*) ;
 int shiSettings ;

__attribute__((used)) static BOOL
ImageView_LoadSettings()
{
    HKEY hKey;
    DWORD dwSize;

    if (RegOpenKeyEx(HKEY_CURRENT_USER, _T("Software\\ReactOS\\shimgvw"), 0, KEY_READ, &hKey) == ERROR_SUCCESS)
    {
        dwSize = sizeof(SHIMGVW_SETTINGS);
        if (RegQueryValueEx(hKey, _T("Settings"), ((void*)0), ((void*)0), (LPBYTE)&shiSettings, &dwSize) == ERROR_SUCCESS)
        {
            RegCloseKey(hKey);
            return TRUE;
        }

        RegCloseKey(hKey);
    }

    return FALSE;
}
