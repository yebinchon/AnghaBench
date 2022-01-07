
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_15__ {int nLevels; } ;
struct TYPE_14__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_13__ {scalar_t__ cx; } ;
typedef int TCHAR ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PDNODE ;
typedef scalar_t__ LPRECT ;
typedef int LPCTSTR ;
typedef long LPARAM ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int HDC ;
typedef int HBRUSH ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int COLOR_WINDOW ;
 int COLOR_WINDOWFRAME ;
 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 scalar_t__ FALSE ;
 int FrameRect (int ,TYPE_2__*,int ) ;
 int GetClientRect (scalar_t__,TYPE_2__*) ;
 int GetDC (scalar_t__) ;
 scalar_t__ GetRealExtent (TYPE_3__*,int *,int *,int*) ;
 int GetSysColor (int ) ;
 int GetTreePath (TYPE_3__*,int *) ;
 scalar_t__ IDS_DRAG_COPYING ;
 scalar_t__ IDS_DRAG_MOVING ;
 int InflateRect (TYPE_2__*,int ,int ) ;
 int IntersectRect (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int InvalidateRect (scalar_t__,TYPE_2__*,scalar_t__) ;
 scalar_t__ LB_ERR ;
 int LB_GETITEMRECT ;
 int LB_GETSEL ;
 int LB_GETTEXT ;
 int MAXPATHLEN ;
 int ReleaseDC (scalar_t__,int ) ;
 int SBT_NOBORDERS ;
 int SB_SETTEXT ;
 int SST_FORMAT ;
 int SST_RESOURCE ;
 scalar_t__ SendMessage (scalar_t__,int ,int,long) ;
 int SetStatusText (int,int,int ,int *) ;
 int StripBackslash (int *) ;
 scalar_t__ TRUE ;
 int UpdateWindow (scalar_t__) ;
 scalar_t__ dxFolder ;
 int dxText ;
 int dyBorder ;
 int dyBorderx2 ;
 scalar_t__ fShowSourceBitmaps ;
 scalar_t__ hwndDragging ;
 scalar_t__ hwndStatus ;
 scalar_t__ szNULL ;

BOOL
RectTreeItem(HWND hwndLB, INT iItem, BOOL bFocusOn)
{
   INT len;
   HDC hdc;
   RECT rc;
   RECT rcClip;
   BOOL bSel;
   WORD wColor;
   PDNODE pNode;
   HBRUSH hBrush;
   TCHAR szPath[MAXPATHLEN];
   SIZE size;

   if (iItem == -1) {

EmptyStatusAndReturn:
      SendMessage(hwndStatus, SB_SETTEXT, SBT_NOBORDERS|255,
         (LPARAM)szNULL);
      UpdateWindow(hwndStatus);
      return FALSE;
   }



   bSel = (BOOL)SendMessage(hwndLB, LB_GETSEL, iItem, 0L);

   if (bSel && (hwndDragging == hwndLB))
      goto EmptyStatusAndReturn;

   if (SendMessage(hwndLB, LB_GETTEXT, iItem, (LPARAM)&pNode) == LB_ERR)
      goto EmptyStatusAndReturn;

   SendMessage(hwndLB, LB_GETITEMRECT, iItem, (LPARAM)(LPRECT)&rc);

   hdc = GetDC(hwndLB);




   size.cx = GetRealExtent(pNode, ((void*)0), szPath, &len);
   size.cx += dyBorder;
   GetClientRect(hwndLB, &rcClip);

   rc.left = pNode->nLevels * dxText * 2 -
      (rc.right - (rcClip.right-rcClip.left));

   rc.right = rc.left + dxFolder + size.cx + 4 * dyBorderx2;

   IntersectRect(&rc, &rc, &rcClip);

   if (bFocusOn) {

      GetTreePath(pNode, szPath);
      StripBackslash(szPath);

      SetStatusText(SBT_NOBORDERS|255, SST_FORMAT|SST_RESOURCE,
               (LPCTSTR)(DWORD)(fShowSourceBitmaps ? IDS_DRAG_COPYING : IDS_DRAG_MOVING),
               szPath);
      UpdateWindow(hwndStatus);

      if (bSel) {
          wColor = COLOR_WINDOW;
          InflateRect(&rc, -dyBorder, -dyBorder);
      } else
          wColor = COLOR_WINDOWFRAME;
      if (hBrush = CreateSolidBrush(GetSysColor(wColor))) {
        FrameRect(hdc, &rc, hBrush);
        DeleteObject(hBrush);
      }
   } else {
      InvalidateRect(hwndLB, &rc, TRUE);
      UpdateWindow(hwndLB);
   }
   ReleaseDC(hwndLB, hdc);
   return TRUE;
}
