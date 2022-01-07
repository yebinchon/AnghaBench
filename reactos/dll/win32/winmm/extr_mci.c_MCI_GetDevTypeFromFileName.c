
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_QUERY_VALUE ;
 int MCIERR_EXTENSION_NOT_FOUND ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,scalar_t__,int ,int ,void*,int *) ;
 int TRACE (char*,int ) ;
 int debugstr_w (scalar_t__) ;
 scalar_t__ strrchrW (scalar_t__,char) ;

__attribute__((used)) static DWORD MCI_GetDevTypeFromFileName(LPCWSTR fileName, LPWSTR buf, UINT len)
{
    LPCWSTR tmp;
    HKEY hKey;
    static const WCHAR keyW[] = {'S','O','F','T','W','A','R','E','\\','M','i','c','r','o','s','o','f','t','\\',
                                 'W','i','n','d','o','w','s',' ','N','T','\\','C','u','r','r','e','n','t','V','e','r','s','i','o','n','\\',
                                 'M','C','I',' ','E','x','t','e','n','s','i','o','n','s',0};
    if ((tmp = strrchrW(fileName, '.'))) {
 if (RegOpenKeyExW( HKEY_LOCAL_MACHINE, keyW,
      0, KEY_QUERY_VALUE, &hKey ) == ERROR_SUCCESS) {
     DWORD dwLen = len;
     LONG lRet = RegQueryValueExW( hKey, tmp + 1, 0, 0, (void*)buf, &dwLen );
     RegCloseKey( hKey );
     if (lRet == ERROR_SUCCESS) return 0;
        }
 TRACE("No ...\\MCI Extensions entry for %s found.\n", debugstr_w(tmp));
    }
    return MCIERR_EXTENSION_NOT_FOUND;
}
