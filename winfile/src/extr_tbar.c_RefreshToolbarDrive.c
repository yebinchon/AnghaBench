
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef long LPARAM ;
typedef int INT ;
typedef size_t DRIVEIND ;
typedef scalar_t__ DRIVE ;


 int CB_DELETESTRING ;
 int CB_GETCURSEL ;
 int CB_INSERTSTRING ;
 int CB_SETCURSEL ;
 scalar_t__ IsCDRomDrive (scalar_t__) ;
 scalar_t__ IsRemovableDrive (scalar_t__) ;
 scalar_t__ SendMessage (int ,int ,int,long) ;
 int U_VolInfo (scalar_t__) ;
 int hwndDriveList ;
 scalar_t__* rgiDrive ;

VOID
RefreshToolbarDrive(DRIVEIND iDriveInd)
{
   INT iSel;
   DRIVE drive;

   iSel = (INT)SendMessage(hwndDriveList, CB_GETCURSEL, 0, 0L);

   SendMessage(hwndDriveList, CB_DELETESTRING, iDriveInd, 0L);

   drive = rgiDrive[iDriveInd];





   if (IsRemovableDrive(drive) || IsCDRomDrive(drive))
      U_VolInfo(drive);





   SendMessage(hwndDriveList, CB_INSERTSTRING,iDriveInd, (LPARAM)drive);

   if (iSel!=-1) {

      SendMessage(hwndDriveList, CB_SETCURSEL, iSel, 0L);
   }
}
