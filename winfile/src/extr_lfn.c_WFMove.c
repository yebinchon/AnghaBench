
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBOOL ;
typedef int LPTSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ChangeFileSystem (int ,int ,int ) ;
 int FALSE ;
 int FSC_RENAME ;
 int FileMove (int ,int ,int *,int ) ;

DWORD
WFMove(LPTSTR pszFrom, LPTSTR pszTo, PBOOL pbErrorOnDest, BOOL bSilent)
{
   DWORD dwRet;

   *pbErrorOnDest = FALSE;
   dwRet = FileMove(pszFrom,pszTo, pbErrorOnDest, bSilent);

   if (!dwRet)
      ChangeFileSystem(FSC_RENAME,pszFrom,pszTo);

   return dwRet;
}
