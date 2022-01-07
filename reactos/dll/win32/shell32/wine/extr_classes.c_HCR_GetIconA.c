
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef char* LPCSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HCR_RegGetIconA (int ,int ,char*,int ,int*) ;
 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 int TRACE (char*,char*,...) ;
 int sprintf (char*,char*,char*) ;

BOOL HCR_GetIconA(LPCSTR szClass, LPSTR szDest, LPCSTR szName, DWORD len, int* picon_idx)
{
 HKEY hkey;
 char sTemp[MAX_PATH];
 BOOL ret = FALSE;

 TRACE("%s\n",szClass );

 sprintf(sTemp, "%s\\DefaultIcon",szClass);

 if (!RegOpenKeyExA(HKEY_CLASSES_ROOT, sTemp, 0, KEY_READ, &hkey))
 {
   ret = HCR_RegGetIconA(hkey, szDest, szName, len, picon_idx);
   RegCloseKey(hkey);
 }
 TRACE("-- %s %i\n", szDest, *picon_idx);
 return ret;
}
