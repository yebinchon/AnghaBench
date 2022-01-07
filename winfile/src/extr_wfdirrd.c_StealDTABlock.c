
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPXDTALINK ;
typedef int LPWSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ DWORD ;


 int COUNTOF (int *) ;
 int GWL_ATTRIBS ;
 int GWL_HDTA ;
 int GWL_IERROR ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 int GetMDIWindowText (scalar_t__,int *,int ) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 scalar_t__ GetWindowLongPtr (scalar_t__,int ) ;
 scalar_t__ HasDirWindow (scalar_t__) ;
 scalar_t__ IDS_NOFILES ;
 int MAXPATHLEN ;
 int * MemClone (int *) ;
 scalar_t__ hwndMDIClient ;
 int lstrcmpi (int ,int *) ;

LPXDTALINK
StealDTABlock(
   HWND hwndCur,
   LPWSTR pPath,
   DWORD dwAttribs)
{
   HWND hwndDir;
   HWND hwnd;
   WCHAR szPath[MAXPATHLEN];

   LPXDTALINK lpStart, lpStartCopy;
   INT iError;

   for (hwnd = GetWindow(hwndMDIClient, GW_CHILD);
      hwnd;
      hwnd = GetWindow(hwnd, GW_HWNDNEXT)) {

      if ((hwndDir = HasDirWindow(hwnd)) && (hwndDir != hwndCur)) {

         GetMDIWindowText(hwnd, szPath, COUNTOF(szPath));

         if ((dwAttribs == (DWORD)GetWindowLongPtr(hwnd, GWL_ATTRIBS)) &&
            !lstrcmpi(pPath, szPath) &&
            (lpStart = (LPXDTALINK)GetWindowLongPtr(hwndDir, GWL_HDTA))) {

            iError = (INT)GetWindowLongPtr(hwndDir, GWL_IERROR);
            if (!iError || IDS_NOFILES == iError) {

               lpStartCopy = MemClone(lpStart);

               return lpStartCopy;
            }
         }
      }
   }

   return ((void*)0);
}
