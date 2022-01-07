
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long style; void* lParam; void* cy; void* cx; void* y; void* x; int hOwner; int szTitle; int szClass; } ;
typedef TYPE_1__ MDICREATESTRUCT ;
typedef int LPWSTR ;
typedef long LPARAM ;
typedef void* INT ;
typedef int * HWND ;


 int COUNTOF (int ) ;
 int GWL_ATTRIBS ;
 int GWL_SORT ;
 int GWL_STYLE ;
 int GWL_VIEW ;
 int GetWindowLongPtr (int *,int ) ;
 int IDS_TOOMANYWINDOWS ;
 int IDS_WINFILE ;
 int LoadString (int ,int ,int ,int ) ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int MessageBox (int ,int ,int ,int) ;
 scalar_t__ SendMessage (int ,int ,long,long) ;
 int SetWindowLongPtr (int *,int ,int ) ;
 int WM_MDICREATE ;
 int WM_MDIGETACTIVE ;
 int WS_MAXIMIZE ;
 int dwNewAttribs ;
 int dwNewSort ;
 int dwNewView ;
 int hAppInstance ;
 int hwndFrame ;
 int hwndMDIClient ;
 int iNumWindows ;
 int szMessage ;
 int szTitle ;
 int szTreeClass ;

HWND
CreateTreeWindow(
   LPWSTR szPath,
   INT x,
   INT y,
   INT dx,
   INT dy,
   INT dxSplit)
{
   MDICREATESTRUCT MDICS;
   HWND hwnd;






   if (iNumWindows > 26) {

      LoadString(hAppInstance, IDS_WINFILE, szTitle, COUNTOF(szTitle));
      LoadString(hAppInstance, IDS_TOOMANYWINDOWS, szMessage, COUNTOF(szMessage));
      MessageBox(hwndFrame, szMessage, szTitle, MB_OK | MB_ICONEXCLAMATION);
      return ((void*)0);
   }




   MDICS.szClass = szTreeClass;
   MDICS.szTitle = szPath;
   MDICS.hOwner = hAppInstance;
   MDICS.style = 0L;

   MDICS.x = x;
   MDICS.y = y;
   MDICS.cx = dx;
   MDICS.cy = dy;

   MDICS.lParam = dxSplit;

   hwnd = (HWND)SendMessage(hwndMDIClient, WM_MDIGETACTIVE, 0, 0L);
   if (hwnd && GetWindowLongPtr(hwnd, GWL_STYLE) & WS_MAXIMIZE)
      MDICS.style |= WS_MAXIMIZE;

   hwnd = (HWND)SendMessage(hwndMDIClient,
                            WM_MDICREATE,
                            0L, (LPARAM)&MDICS);






   SetWindowLongPtr(hwnd, GWL_VIEW, dwNewView);
   SetWindowLongPtr(hwnd, GWL_SORT, dwNewSort);
   SetWindowLongPtr(hwnd, GWL_ATTRIBS, dwNewAttribs);

   return hwnd;
}
