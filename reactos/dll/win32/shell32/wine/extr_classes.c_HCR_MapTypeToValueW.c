
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int MAX_EXTENSION_LENGTH ;
 int RegCloseKey (int ) ;
 int RegLoadMUIStringW (int ,char*,char*,int ,int *,int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueW (int ,int *,char*,int *) ;
 int TRACE (char*,int ,...) ;
 scalar_t__ TRUE ;
 int debugstr_w (char*) ;
 int lstrcpynW (char*,char*,int ) ;

BOOL HCR_MapTypeToValueW(LPCWSTR szExtension, LPWSTR szFileType, LONG len, BOOL bPrependDot)
{
 HKEY hkey;
 WCHAR szTemp[MAX_EXTENSION_LENGTH + 2];

 TRACE("%s %p\n", debugstr_w(szExtension), szFileType);


        if (szExtension[0] == '.')
          bPrependDot = FALSE;

 if (bPrependDot)
   szTemp[0] = '.';

 lstrcpynW(szTemp + (bPrependDot?1:0), szExtension, MAX_EXTENSION_LENGTH);

 if (RegOpenKeyExW(HKEY_CLASSES_ROOT, szTemp, 0, KEY_READ, &hkey))
 {
   return FALSE;
 }
 if (RegQueryValueW(hkey, ((void*)0), szFileType, &len))
 {
   RegCloseKey(hkey);
   return FALSE;
 }

 RegCloseKey(hkey);

 TRACE("--UE;\n} %s\n", debugstr_w(szFileType));

 return TRUE;
}
