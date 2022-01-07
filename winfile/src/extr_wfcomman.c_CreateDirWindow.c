
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef long LPARAM ;
typedef size_t INT ;
typedef int HWND ;
typedef scalar_t__ DRIVE ;
typedef scalar_t__ BOOL ;


 int AddBackslash (scalar_t__) ;
 int CB_GETCURSEL ;
 size_t CD_PATH ;
 int CW_USEDEFAULT ;
 int CharUpperBuff (scalar_t__,int) ;
 int CreateTreeWindow (scalar_t__,int ,int ,int ,int ,size_t) ;
 scalar_t__ DRIVEID (scalar_t__) ;
 scalar_t__ FALSE ;
 int FS_CHANGEDISPLAY ;
 int FS_GETFILESPEC ;
 int GET_WM_MDIACTIVATE_MPS (int ,int ,int ) ;
 size_t GetSplit (int ) ;
 int HasDirWindow (int ) ;
 int HasTreeWindow (int ) ;
 scalar_t__ IsIconic (int ) ;
 int LocateDirWindow (scalar_t__,int ,scalar_t__) ;
 size_t MAKELONG (int ,int ) ;
 int MAKEWORD (scalar_t__,int ) ;
 size_t MAXFILENAMELEN ;
 size_t SC_RESTORE ;
 int SelectToolbarDrive (size_t) ;
 size_t SendMessage (int ,int ,size_t,...) ;
 int StripFilespec (scalar_t__) ;
 int TC_SETDRIVE ;
 int TRUE ;
 int UpdateStatus (int ) ;
 int WM_MDIACTIVATE ;
 int WM_SYSCOMMAND ;
 size_t cDrives ;
 int hwndDriveList ;
 int hwndMDIClient ;
 int hwndSearch ;
 int lstrcat (scalar_t__,int ) ;
 scalar_t__ lstrlen (scalar_t__) ;
 scalar_t__* rgiDrive ;
 int szStarDotStar ;

HWND
CreateDirWindow(
   register LPWSTR szPath,
   BOOL bReplaceOpen,
   HWND hwndActive)
{
   register HWND hwndT;
   INT dxSplit;

   if (hwndActive == hwndSearch) {
    bReplaceOpen = FALSE;
    dxSplit = -1;
   } else {
    dxSplit = GetSplit(hwndActive);
   }




   if (!bReplaceOpen && (hwndT = LocateDirWindow(szPath, TRUE, FALSE))) {

      SendMessage(hwndMDIClient, WM_MDIACTIVATE, GET_WM_MDIACTIVATE_MPS(0, 0, hwndT));
      if (IsIconic(hwndT))
         SendMessage(hwndT, WM_SYSCOMMAND, SC_RESTORE, 0L);
      return hwndT;
   }




   if (bReplaceOpen) {
    CharUpperBuff(szPath, 1);

    DRIVE drive = DRIVEID(szPath);
    for (INT i = 0; i<cDrives; i++)
    {
     if (drive == rgiDrive[i])
     {

      if (i != SendMessage(hwndDriveList, CB_GETCURSEL, i, 0L))
      {
       SelectToolbarDrive(i);
      }
      break;
     }
    }

    if (hwndT = HasDirWindow(hwndActive))
    {
     AddBackslash(szPath);
     SendMessage(hwndT, FS_GETFILESPEC, MAXFILENAMELEN, (LPARAM)(szPath + lstrlen(szPath)));
     SendMessage(hwndT, FS_CHANGEDISPLAY, CD_PATH, (LPARAM)szPath);
     StripFilespec(szPath);
    }




    ;
    if (hwndT = HasTreeWindow(hwndActive))
    {
     SendMessage(hwndT, TC_SETDRIVE, 0, (LPARAM)(szPath));
    }




    UpdateStatus(hwndActive);

    return hwndActive;
   }

   AddBackslash(szPath);
   lstrcat(szPath, szStarDotStar);




   hwndActive = CreateTreeWindow(szPath, CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, dxSplit);


   if (hwndActive && (hwndT = HasTreeWindow(hwndActive)))
    SendMessage(hwndT,
     TC_SETDRIVE,
     MAKELONG(MAKEWORD(FALSE, 0), TRUE),
     0L);

   return hwndActive;
}
