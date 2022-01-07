
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int DWORD ;


 int ChangeFileSystem (int ,scalar_t__*,int *) ;
 scalar_t__ CreateDirectory (scalar_t__*,int *) ;
 scalar_t__ CreateDirectoryEx (scalar_t__*,scalar_t__*,int *) ;
 int ERROR_SUCCESS ;
 int FSC_MKDIR ;
 int GetLastError () ;

DWORD MKDir(
    LPTSTR pName,
    LPTSTR pSrc)
{
   DWORD dwErr = ERROR_SUCCESS;

   if ((pSrc && *pSrc) ?
         CreateDirectoryEx(pSrc, pName, ((void*)0)) :
         CreateDirectory(pName, ((void*)0)))
   {
      ChangeFileSystem(FSC_MKDIR, pName, ((void*)0));
   }
   else
   {
      dwErr = GetLastError();
   }

   return (dwErr);
}
