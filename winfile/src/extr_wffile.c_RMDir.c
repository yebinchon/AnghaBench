
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef int LPTSTR ;
typedef scalar_t__ DWORD ;


 int ChangeFileSystem (int ,int ,int *) ;
 int FSC_RMDIR ;
 scalar_t__ GetLastError () ;
 scalar_t__ RemoveDirectory (int ) ;

DWORD RMDir(
    LPTSTR pName)
{
   DWORD dwErr = 0;

   if (RemoveDirectory(pName))
   {
      ChangeFileSystem(FSC_RMDIR, pName, ((void*)0));
   }
   else
   {
      dwErr = (WORD)GetLastError();
   }

   return (dwErr);
}
