
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ HCR_RegGetIconW (int ,int ,int ,int ,int*) ;
 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 int TRACE (char*,...) ;
 int debugstr_w (int ) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpynW (char*,int ,int) ;

BOOL HCR_GetIconW(LPCWSTR szClass, LPWSTR szDest, LPCWSTR szName, DWORD len, int* picon_idx)
{
        static const WCHAR swDefaultIcon[] = {'\\','D','e','f','a','u','l','t','I','c','o','n',0};
 HKEY hkey;
 WCHAR sTemp[MAX_PATH];
 BOOL ret = FALSE;

 TRACE("%s\n",debugstr_w(szClass) );

 lstrcpynW(sTemp, szClass, MAX_PATH);
 lstrcatW(sTemp, swDefaultIcon);

 if (!RegOpenKeyExW(HKEY_CLASSES_ROOT, sTemp, 0, KEY_READ, &hkey))
 {
   ret = HCR_RegGetIconW(hkey, szDest, szName, len, picon_idx);
   RegCloseKey(hkey);
 }

        if(ret)
            TRACE("-- %s %i\n", debugstr_w(szDest), *picon_idx);
        else
            TRACE("-- not found\n");

 return ret;
}
