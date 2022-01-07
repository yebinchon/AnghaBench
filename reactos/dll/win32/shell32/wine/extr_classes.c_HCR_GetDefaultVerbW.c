
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegEnumKeyW (int ,int ,char*,int ) ;
 int RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 int RegQueryValueW (int ,int ,char*,int *) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int debugstr_w (char*) ;
 int lstrcatW (char*,char*) ;
 int lstrcpyW (char*,int ) ;
 int lstrcpynW (char*,char*,int ) ;
 char* swCommand ;
 char* swOpen ;
 int swShell ;

BOOL HCR_GetDefaultVerbW( HKEY hkeyClass, LPCWSTR szVerb, LPWSTR szDest, DWORD len )
{
        WCHAR sTemp[MAX_PATH];
        LONG size;
        HKEY hkey;

 TRACE("%p %s %p\n", hkeyClass, debugstr_w(szVerb), szDest);

        if (szVerb && *szVerb)
        {
            lstrcpynW(szDest, szVerb, len);
            return TRUE;
        }

        size=len;
        *szDest='\0';
        if (!RegQueryValueW(hkeyClass, swShell, szDest, &size) && *szDest)
        {

            lstrcpyW(sTemp, swShell);
            lstrcatW(sTemp, szDest);
            lstrcatW(sTemp, swCommand);
            if (!RegOpenKeyExW(hkeyClass, sTemp, 0, KEY_READ, &hkey))
            {
                RegCloseKey(hkey);
                TRACE("default verb=%s\n", debugstr_w(szDest));
                return TRUE;
            }
        }


        lstrcpyW(sTemp, swShell);
        lstrcatW(sTemp, swOpen);
        lstrcatW(sTemp, swCommand);
        if (!RegOpenKeyExW(hkeyClass, sTemp, 0, KEY_READ, &hkey))
        {
            RegCloseKey(hkey);
            lstrcpynW(szDest, swOpen, len);
            TRACE("default verb=open\n");
            return TRUE;
        }
        if (!RegEnumKeyW(hkeyClass, 0, szDest, len) && *szDest)
        {
            TRACE("default verb=first verb=%s\n", debugstr_w(szDest));
            return TRUE;
        }


        TRACE("no default verb!\n");
 return FALSE;
}
