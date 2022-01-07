
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int BOOL ;


 int CheckDrive (int ,int ,int ) ;
 int DRIVEID (int ) ;
 int FALSE ;
 int FUNC_SETDRIVE ;
 int IsNetDrive (int ) ;
 scalar_t__ IsValidDisk (int ) ;
 int SetCurrentDirectory (int ) ;
 int TRUE ;
 int hwndFrame ;

BOOL
CheckDirExists(
   LPWSTR szDir)
{
   BOOL bRet = FALSE;

   if (IsNetDrive(DRIVEID(szDir)) == 2) {

      CheckDrive(hwndFrame, DRIVEID(szDir), FUNC_SETDRIVE);
      return TRUE;
   }

   if (IsValidDisk(DRIVEID(szDir)))
      bRet = SetCurrentDirectory(szDir);

   return bRet;
}
