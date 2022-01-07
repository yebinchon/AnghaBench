
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int dwAttrs; } ;
typedef int RECT ;
typedef int * PDOCBUCKET ;
typedef TYPE_1__* LPXDTA ;
typedef int * LPWSTR ;
typedef scalar_t__ LPTSTR ;
typedef scalar_t__ LPRECT ;
typedef long LPARAM ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int HDC ;
typedef int HBRUSH ;
typedef scalar_t__ BOOL ;


 int ATTR_DIR ;
 int ATTR_PARENT ;
 int COLOR_WINDOW ;
 int COLOR_WINDOWFRAME ;
 int COUNTOF (int *) ;
 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 scalar_t__ FALSE ;
 int FS_GETDIRECTORY ;
 int FrameRect (int ,int *,int ) ;
 int GetClientRect (scalar_t__,int *) ;
 int GetDC (scalar_t__) ;
 scalar_t__ GetParent (scalar_t__) ;
 int GetSysColor (int) ;
 scalar_t__ IDS_DRAG_COPYING ;
 scalar_t__ IDS_DRAG_EXECUTING ;
 scalar_t__ IDS_DRAG_MOVING ;
 int InflateRect (int *,int,int) ;
 int IntersectRect (int *,int *,int *) ;
 int InvalidateRect (scalar_t__,int *,scalar_t__) ;
 int * IsProgramFile (int *) ;
 scalar_t__ LB_ERR ;
 int LB_GETITEMRECT ;
 int LB_GETSEL ;
 int LB_GETTEXT ;
 int MAXPATHLEN ;
 int * MemGetFileName (TYPE_1__*) ;
 int ReleaseDC (scalar_t__,int ) ;
 int SBT_NOBORDERS ;
 int SB_SETTEXT ;
 int SST_FORMAT ;
 int SST_RESOURCE ;
 scalar_t__ SendMessage (scalar_t__,int ,int,long) ;
 int SetStatusText (int,int,int *,int *) ;
 int StripBackslash (int *) ;
 int StripFilespec (int *) ;
 scalar_t__ TRUE ;
 int UpdateWindow (scalar_t__) ;
 scalar_t__ fShowSourceBitmaps ;
 scalar_t__ hwndDragging ;
 scalar_t__ hwndStatus ;
 scalar_t__ szNULL ;

BOOL
DSRectItem(
   HWND hwndLB,
   INT iItem,
   BOOL bFocusOn,
   BOOL bSearch)
{
   RECT rc;
   RECT rcT;
   HDC hDC;
   BOOL bSel;
   INT nColor;
   HBRUSH hBrush;
   LPXDTA lpxdta;
   WCHAR szTemp[MAXPATHLEN];
   PDOCBUCKET pIsProgram = ((void*)0);
   LPWSTR pszFile;




   if (iItem == -1) {
      if (bSearch || hwndDragging == hwndLB) {
         SendMessage(hwndStatus,
                     SB_SETTEXT,
                     SBT_NOBORDERS|255,
                     (LPARAM)szNULL);

         UpdateWindow(hwndStatus);

      } else {

         SendMessage(GetParent(hwndLB),
                     FS_GETDIRECTORY,
                     COUNTOF(szTemp),
                     (LPARAM)szTemp);

         StripBackslash(szTemp);

         SetStatusText(SBT_NOBORDERS|255,
                       SST_RESOURCE|SST_FORMAT,
                       (LPWSTR)(fShowSourceBitmaps ?
                          IDS_DRAG_COPYING :
                          IDS_DRAG_MOVING),
                       szTemp);

         UpdateWindow(hwndStatus);
      }
      return FALSE;
   }




   bSel = (BOOL)SendMessage(hwndLB, LB_GETSEL, iItem, 0L);

   if (bSel && (hwndDragging == hwndLB)) {

ClearStatus:

      SendMessage(hwndStatus,
                  SB_SETTEXT,
                  SBT_NOBORDERS|255,
                  (LPARAM)szNULL);

      UpdateWindow(hwndStatus);
      return FALSE;
   }




   if (SendMessage(hwndLB,
                   LB_GETTEXT,
                   iItem,
                   (LPARAM)(LPTSTR)&lpxdta) == LB_ERR || !lpxdta) {
      return FALSE;
   }

   if (!(lpxdta->dwAttrs & ATTR_DIR) &&
      !(pIsProgram = IsProgramFile(MemGetFileName(lpxdta)))) {
      if ((hwndDragging == hwndLB) || bSearch) {
         goto ClearStatus;
      }





      SendMessage(GetParent(hwndLB), FS_GETDIRECTORY, COUNTOF(szTemp), (LPARAM)szTemp);
      StripBackslash(szTemp);

      SetStatusText(SBT_NOBORDERS|255,
                    SST_FORMAT | SST_RESOURCE,
                    (LPWSTR)(fShowSourceBitmaps ?
                        IDS_DRAG_COPYING :
                        IDS_DRAG_MOVING),
                    szTemp);

      UpdateWindow(hwndStatus);
      return FALSE;
   }
   if (bSearch || !(lpxdta->dwAttrs & ATTR_PARENT)) {

      pszFile = MemGetFileName(lpxdta);

   } else {

      SendMessage(GetParent(hwndLB), FS_GETDIRECTORY, COUNTOF(szTemp), (LPARAM)szTemp);
      StripBackslash(szTemp);
      StripFilespec(szTemp);

      pszFile = szTemp;
   }




   if (bFocusOn) {

      SetStatusText(SBT_NOBORDERS|255,
                    SST_FORMAT | SST_RESOURCE,
                    (LPWSTR)(pIsProgram ?
                       IDS_DRAG_EXECUTING :
                       (fShowSourceBitmaps ?
                          IDS_DRAG_COPYING :
                          IDS_DRAG_MOVING)),
                   pszFile);

      UpdateWindow(hwndStatus);
   }

   SendMessage(hwndLB, LB_GETITEMRECT, iItem, (LPARAM)(LPRECT)&rc);
   GetClientRect(hwndLB,&rcT);
   IntersectRect(&rc,&rc,&rcT);

   if (bFocusOn) {
      hDC = GetDC(hwndLB);
      if (bSel) {
         nColor = COLOR_WINDOW;
         InflateRect(&rc, -1, -1);
      } else
         nColor = COLOR_WINDOWFRAME;

      if (hBrush = CreateSolidBrush(GetSysColor(nColor))) {
         FrameRect(hDC, &rc, hBrush);
         DeleteObject(hBrush);
      }
      ReleaseDC(hwndLB, hDC);
   } else {
      InvalidateRect(hwndLB, &rc, FALSE);
      UpdateWindow(hwndLB);
   }

   return TRUE;
}
