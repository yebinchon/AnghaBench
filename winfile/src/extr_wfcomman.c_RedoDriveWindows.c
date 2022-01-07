
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ INT ;
typedef int * HWND ;


 int DRIVEBAR_FLAG ;
 int FillToolbarDrives (scalar_t__) ;
 int GWL_TYPE ;
 scalar_t__ GetWindowLongPtr (int *,int ) ;
 int MDIClientSizeChange (int *,int ) ;
 int SelectToolbarDrive (scalar_t__) ;
 scalar_t__ SendMessage (int ,int ,int ,long) ;
 int WM_MDIGETACTIVE ;
 scalar_t__ cDrives ;
 int hwndMDIClient ;
 scalar_t__* rgiDrive ;

VOID
RedoDriveWindows(HWND hwndActive)
{
   INT iCurDrive;
   INT iDriveInd;

   if (hwndActive == ((void*)0))
      hwndActive = (HWND) SendMessage(hwndMDIClient, WM_MDIGETACTIVE,0,0L);

   iCurDrive = (INT)GetWindowLongPtr(hwndActive, GWL_TYPE);

   if (iCurDrive >= 0) {
      for (iDriveInd=0; iDriveInd<cDrives; iDriveInd++) {
         if (rgiDrive[iDriveInd] == iCurDrive) {




            FillToolbarDrives(iCurDrive);
            SelectToolbarDrive(iDriveInd);

            break;
         }
      }
   }




   MDIClientSizeChange(hwndActive,DRIVEBAR_FLAG);
}
