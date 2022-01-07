
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPXDTALINK ;
typedef long LPARAM ;
typedef long INT ;
typedef scalar_t__ HWND ;
typedef int EDIRABORT ;


 int COUNTOF (int *) ;
 int EDIRABORT_READREQUEST ;
 int EDIRABORT_WINDOWCLOSE ;
 int FILE_NOTIFY_CHANGE_FLAGS ;
 int FS_TESTEMPTY ;
 int FillDirList (scalar_t__,int *) ;
 int GWLP_USERDATA ;
 int GWL_HDTA ;
 int GWL_HDTAABORT ;
 int GWL_IERROR ;
 int GWL_NEXTHWND ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int GetMDIWindowText (scalar_t__,int *,int ) ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ GetWindowLongPtr (scalar_t__,int ) ;
 int IDCW_LISTBOX ;
 int LB_DELETESTRING ;
 int MAXPATHLEN ;
 int ModifyWatchList (scalar_t__,int *,int ) ;
 int SPC_SET_INVALID (int ) ;
 int SendMessage (scalar_t__,int ,long,long) ;
 int SetWindowLongPtr (scalar_t__,int ,long) ;
 int StripFilespec (int *) ;
 int qFreeSpace ;

LPXDTALINK
DirReadDone(
   HWND hwndDir,
   LPXDTALINK lpStart,
   INT iError)
{
   HWND hwndLB = GetDlgItem(hwndDir, IDCW_LISTBOX);
   HWND hwndParent = GetParent(hwndDir);
   WCHAR szPath[MAXPATHLEN];
   HWND hwndNext;


   EDIRABORT eDirAbort;

   eDirAbort = (EDIRABORT)GetWindowLongPtr(hwndDir, GWL_HDTAABORT);




   if ((eDirAbort & (EDIRABORT_READREQUEST|EDIRABORT_WINDOWCLOSE)) ||
      GetWindowLongPtr(hwndDir, GWL_HDTA)) {




      return ((void*)0);
   }

   GetMDIWindowText(hwndParent, szPath, COUNTOF(szPath));
   StripFilespec(szPath);

   ModifyWatchList(hwndParent,
                   szPath,
                   FILE_NOTIFY_CHANGE_FLAGS);

   SetWindowLongPtr(hwndDir, GWL_IERROR, iError);
   SetWindowLongPtr(hwndDir, GWL_HDTA, (LPARAM)lpStart);




   SendMessage(hwndLB, LB_DELETESTRING, 0, 0);

   FillDirList(hwndDir, lpStart);

   SetWindowLongPtr(hwndDir, GWLP_USERDATA, 0);

   hwndNext = (HWND)GetWindowLongPtr(hwndDir, GWL_NEXTHWND);
   if (hwndNext)
   {
       SendMessage(hwndDir, FS_TESTEMPTY, 0L, (LPARAM)hwndNext);
   }
   SetWindowLongPtr(hwndDir, GWL_NEXTHWND, 0L);




   SPC_SET_INVALID(qFreeSpace);

   return lpStart;
}
