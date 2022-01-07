
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef char WCHAR ;
typedef int HKEY ;
typedef int FILETIME ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__ ARRAY_SIZE (char const*) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetPrivateProfileSectionW (char const*,char*,scalar_t__,char const*) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int MSACM_RegisterDriver (char const*,char const*,int ) ;
 int MSACM_ReorderDriversByPriority () ;
 scalar_t__ MSACM_pFirstACMDriverID ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,scalar_t__,char*,scalar_t__*,int ,int ,int ,int *) ;
 scalar_t__ RegEnumValueW (int ,scalar_t__,char*,scalar_t__*,int ,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int ,int *) ;
 int RegQueryInfoKeyW (int ,int ,int ,int ,scalar_t__*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ _wcsnicmp (char*,char const*,scalar_t__) ;
 scalar_t__ lstrlenW (char*) ;
 char* wcschr (char*,char) ;

void MSACM_RegisterAllDrivers(void)
{
    static const WCHAR msacm32[] = {'m','s','a','c','m','3','2','.','d','l','l','\0'};
    static const WCHAR msacmW[] = {'M','S','A','C','M','.'};
    static const WCHAR drv32[] = {'d','r','i','v','e','r','s','3','2','\0'};
    static const WCHAR sys[] = {'s','y','s','t','e','m','.','i','n','i','\0'};
    static const WCHAR drvkey[] = {'S','o','f','t','w','a','r','e','\\',
       'M','i','c','r','o','s','o','f','t','\\',
       'W','i','n','d','o','w','s',' ','N','T','\\',
       'C','u','r','r','e','n','t','V','e','r','s','i','o','n','\\',
       'D','r','i','v','e','r','s','3','2','\0'};
    DWORD i, cnt, bufLen, lRet, type;
    WCHAR buf[2048], valname[64], *name, *s;
    FILETIME lastWrite;
    HKEY hKey;



    if (MSACM_pFirstACMDriverID) return;

    lRet = RegOpenKeyExW(HKEY_LOCAL_MACHINE, drvkey, 0, KEY_QUERY_VALUE, &hKey);
    if (lRet == ERROR_SUCCESS) {
 RegQueryInfoKeyW( hKey, 0, 0, 0, &cnt, 0, 0, 0, 0, 0, 0, 0);
 for (i = 0; i < cnt; i++) {
     bufLen = ARRAY_SIZE(buf);
     lRet = RegEnumKeyExW(hKey, i, buf, &bufLen, 0, 0, 0, &lastWrite);
     if (lRet != ERROR_SUCCESS) continue;
     if (_wcsnicmp(buf, msacmW, ARRAY_SIZE(msacmW))) continue;
     if (!(name = wcschr(buf, '='))) continue;
     *name = 0;
     MSACM_RegisterDriver(buf, name + 1, 0);
 }
 i = 0;
 cnt = ARRAY_SIZE(valname);
 bufLen = sizeof(buf);
 while(RegEnumValueW(hKey, i, valname, &cnt, 0,
      &type, (BYTE*)buf, &bufLen) == ERROR_SUCCESS){
     if (!_wcsnicmp(valname, msacmW, ARRAY_SIZE(msacmW)))
  MSACM_RegisterDriver(valname, buf, 0);
     ++i;
 }
     RegCloseKey( hKey );
    }

    if (GetPrivateProfileSectionW(drv32, buf, ARRAY_SIZE(buf), sys))
    {
 for(s = buf; *s; s += lstrlenW(s) + 1)
 {
     if (_wcsnicmp(s, msacmW, ARRAY_SIZE(msacmW))) continue;
     if (!(name = wcschr(s, '='))) continue;
     *name = 0;
     MSACM_RegisterDriver(s, name + 1, 0);
     *name = '=';
 }
    }
    MSACM_ReorderDriversByPriority();
    MSACM_RegisterDriver(msacm32, msacm32, 0);
}
