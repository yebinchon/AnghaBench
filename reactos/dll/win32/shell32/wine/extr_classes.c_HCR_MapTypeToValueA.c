
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef char* LPCSTR ;
typedef int LONG ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int MAX_EXTENSION_LENGTH ;
 int RegCloseKey (int ) ;
 int RegLoadMUIStringA (int ,char*,int ,int ,int *,int ,int *) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueA (int ,int *,int ,int *) ;
 int TRACE (char*,char*,...) ;
 scalar_t__ TRUE ;
 int lstrcpynA (char*,char*,int ) ;

BOOL HCR_MapTypeToValueA(LPCSTR szExtension, LPSTR szFileType, LONG len, BOOL bPrependDot)
{
 HKEY hkey;
 char szTemp[MAX_EXTENSION_LENGTH + 2];

 TRACE("%s %p\n", szExtension, szFileType);


        if (szExtension[0] == '.')
          bPrependDot = FALSE;

 if (bPrependDot)
   szTemp[0] = '.';

 lstrcpynA(szTemp + (bPrependDot?1:0), szExtension, MAX_EXTENSION_LENGTH);

 if (RegOpenKeyExA(HKEY_CLASSES_ROOT, szTemp, 0, KEY_READ, &hkey))
 {
   return FALSE;
 }
 if (RegQueryValueA(hkey, ((void*)0), szFileType, &len))
 {
   RegCloseKey(hkey);
   return FALSE;
 }

 RegCloseKey(hkey);

 TRACE("--UE;\n} %s\n", szFileType);

 return TRUE;
}
