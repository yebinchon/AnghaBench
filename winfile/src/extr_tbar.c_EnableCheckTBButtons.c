
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef int DWORD ;
typedef int BOOL ;


 int CheckTBButton (int) ;
 int GWL_SORT ;
 int GWL_TYPE ;
 int GWL_VIEW ;
 int GetWindowLongPtr (scalar_t__,int ) ;
 scalar_t__ HasDirWindow (scalar_t__) ;
 int IDD_NAME ;
 scalar_t__ IDM_BYDATE ;
 int IDM_BYNAME ;
 int IDM_VDETAILS ;
 int IDM_VNAME ;
 int IDM_VOTHER ;
 int SendMessage (int ,int ,scalar_t__,int) ;
 int SwitchDriveSelection (scalar_t__,int ) ;
 int TB_ENABLEBUTTON ;
 int TRUE ;
 int UpdateStatus (scalar_t__) ;
 int UpdateWindow (int ) ;


 scalar_t__ hwndSearch ;
 int hwndToolbar ;

VOID
EnableCheckTBButtons(HWND hwndActive)
{
   DWORD dwSort;
   BOOL fEnable;
   INT iButton;




   if (hwndActive == hwndSearch) {

      SwitchDriveSelection(hwndSearch, TRUE);
      UpdateStatus(hwndSearch);
   }




   switch (GetWindowLongPtr(hwndActive, GWL_VIEW) & 129) {
   case 128:
      CheckTBButton(IDM_VNAME);
      break;

   case 129:
      CheckTBButton(IDM_VDETAILS);
      break;

   default:
      CheckTBButton(IDM_VOTHER);
      break;
   }





   dwSort = GetWindowLongPtr(hwndActive, GWL_SORT) - IDD_NAME + IDM_BYNAME;

   fEnable = ((int)GetWindowLongPtr(hwndActive, GWL_TYPE) >= 0 &&
      HasDirWindow(hwndActive));

   CheckTBButton(dwSort);
   for (iButton=IDM_BYNAME; iButton<=IDM_BYDATE; ++iButton) {
      SendMessage(hwndToolbar, TB_ENABLEBUTTON, iButton, fEnable);
   }

   UpdateWindow(hwndToolbar);
}
