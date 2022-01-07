
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int DWORD ;


 int ChangeFileSystem (int ,int ,int *) ;
 int FSC_DELETE ;
 int FileRemove (int ) ;

DWORD
WFRemove(LPTSTR pszFile)
{
   DWORD dwRet;

   dwRet = FileRemove(pszFile);
   if (!dwRet)
      ChangeFileSystem(FSC_DELETE,pszFile,((void*)0));

   return dwRet;
}
