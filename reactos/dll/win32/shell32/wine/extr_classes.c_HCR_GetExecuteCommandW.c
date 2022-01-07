
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sTempVerb ;
typedef int WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ HCR_GetDefaultVerbW (int ,scalar_t__,int *,int) ;
 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,scalar_t__,int ,int ,int *) ;
 scalar_t__ SHGetValueW (int ,int *,int *,int *,scalar_t__,int *) ;
 int TRACE (char*,int ,...) ;
 int debugstr_w (scalar_t__) ;
 int lstrcatW (int *,int *) ;
 int lstrcpyW (int *,int ) ;
 int * swCommand ;
 int swShell ;

BOOL HCR_GetExecuteCommandW( HKEY hkeyClass, LPCWSTR szClass, LPCWSTR szVerb, LPWSTR szDest, DWORD len )
{
 WCHAR sTempVerb[MAX_PATH];
 BOOL ret;

 TRACE("%p %s %s %p\n", hkeyClass, debugstr_w(szClass), debugstr_w(szVerb), szDest);

 if (szClass)
            RegOpenKeyExW(HKEY_CLASSES_ROOT, szClass, 0, KEY_READ, &hkeyClass);
        if (!hkeyClass)
            return FALSE;
        ret = FALSE;

        if (HCR_GetDefaultVerbW(hkeyClass, szVerb, sTempVerb, sizeof(sTempVerb)/sizeof(sTempVerb[0])))
        {
            WCHAR sTemp[MAX_PATH];
            lstrcpyW(sTemp, swShell);
            lstrcatW(sTemp, sTempVerb);
            lstrcatW(sTemp, swCommand);
            ret = (ERROR_SUCCESS == SHGetValueW(hkeyClass, sTemp, ((void*)0), ((void*)0), szDest, &len));
        }
        if (szClass)
            RegCloseKey(hkeyClass);

 TRACE("-- %s\n", debugstr_w(szDest) );
 return ret;
}
