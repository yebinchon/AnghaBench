
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ATTR_COMPRESSED ;
 int ATTR_ENCRYPTED ;
 int ChangeFileSystem (int ,int ,int *) ;
 int FSC_ATTRIBUTES ;
 scalar_t__ SetFileAttributes (int ,int) ;

BOOL WFSetAttr(
    LPTSTR lpFile,
    DWORD dwAttr)
{
   BOOL bRet;





   dwAttr = dwAttr & ~(ATTR_COMPRESSED | ATTR_ENCRYPTED);

   bRet = SetFileAttributes(lpFile, dwAttr);

   if (bRet)
   {
      ChangeFileSystem(FSC_ATTRIBUTES, lpFile, ((void*)0));
   }

   return ( (BOOL)!bRet );
}
