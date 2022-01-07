
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int DRIVEIND ;


 int CB_SETCURSEL ;
 scalar_t__ FALSE ;
 int GWL_CURDRIVEIND ;
 int RefreshToolbarDrive (int ) ;
 int SendMessage (int ,int ,int ,long) ;
 int SetWindowLongPtr (int ,int ,int ) ;
 scalar_t__ TRUE ;
 int WM_SETREDRAW ;
 int hwndDriveBar ;
 int hwndDriveList ;

VOID
SelectToolbarDrive(DRIVEIND DriveInd)
{





   SendMessage(hwndDriveList, WM_SETREDRAW, (WPARAM)FALSE, 0L);
   RefreshToolbarDrive(DriveInd);

   SendMessage(hwndDriveList, WM_SETREDRAW, (WPARAM)TRUE, 0L);
   SendMessage(hwndDriveList, CB_SETCURSEL, DriveInd, 0L);




   SetWindowLongPtr(hwndDriveBar, GWL_CURDRIVEIND, DriveInd);
}
