
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ATTR_DIR ;
 int FALSE ;
 int GetFileAttributes (int ) ;
 int INVALID_FILE_ATTRIBUTES ;
 int TRUE ;

BOOL
WFIsDir(LPTSTR lpDir)
{
   DWORD attr = GetFileAttributes(lpDir);

   if (attr == INVALID_FILE_ATTRIBUTES)
      return FALSE;

   if (attr & ATTR_DIR)
      return TRUE;

   return FALSE;
}
