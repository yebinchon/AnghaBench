
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef char WCHAR ;
typedef int * PWINE_ACMDRIVERID ;
typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (char const*) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int MSACM_RegisterDriver (int ,char*,int ) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,int *,int ,scalar_t__*) ;
 int WARN (char*,scalar_t__,...) ;
 scalar_t__ _wcsnicmp (int ,char const*,int ) ;
 int debugstr_w (int ) ;

PWINE_ACMDRIVERID MSACM_RegisterDriverFromRegistry(LPCWSTR pszRegEntry)
{
    static const WCHAR msacmW[] = {'M','S','A','C','M','.'};
    static const WCHAR drvkey[] = {'S','o','f','t','w','a','r','e','\\',
       'M','i','c','r','o','s','o','f','t','\\',
       'W','i','n','d','o','w','s',' ','N','T','\\',
       'C','u','r','r','e','n','t','V','e','r','s','i','o','n','\\',
       'D','r','i','v','e','r','s','3','2','\0'};
    WCHAR buf[2048];
    DWORD bufLen, lRet;
    HKEY hKey;
    PWINE_ACMDRIVERID padid = ((void*)0);




    if (0 == _wcsnicmp(pszRegEntry, msacmW, ARRAY_SIZE(msacmW))) {
        lRet = RegOpenKeyExW(HKEY_LOCAL_MACHINE, drvkey, 0, KEY_QUERY_VALUE, &hKey);
        if (lRet != ERROR_SUCCESS) {
            WARN("unable to open registry key - 0x%08x\n", lRet);
        } else {
            bufLen = sizeof(buf);
            lRet = RegQueryValueExW(hKey, pszRegEntry, ((void*)0), ((void*)0), (LPBYTE)buf, &bufLen);
            if (lRet != ERROR_SUCCESS) {
                WARN("unable to query requested subkey %s - 0x%08x\n", debugstr_w(pszRegEntry), lRet);
            } else {
                MSACM_RegisterDriver(pszRegEntry, buf, 0);
            }
            RegCloseKey( hKey );
        }
    }
    return padid;
}
