
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int RECT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int DRIVEIND ;
typedef scalar_t__ BOOL ;


 int COLOR_WINDOWTEXT ;
 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int FrameRect (int ,int *,int ) ;
 int GetDC (int ) ;
 int GetDriveRect (int ,int *) ;
 int GetSysColor (int ) ;
 int InflateRect (int *,int ,int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int UpdateWindow (int ) ;
 int dyBorder ;
 int hwndDriveBar ;

VOID
RectDrive(DRIVEIND driveInd, BOOL bDraw)
{
   RECT rc, rcDrive;
   HBRUSH hBrush;
   HDC hdc;

   GetDriveRect(driveInd, &rc);
   rcDrive = rc;
   InflateRect(&rc, -dyBorder, -dyBorder);

   if (bDraw) {

      hdc = GetDC(hwndDriveBar);

      if (hBrush = CreateSolidBrush(GetSysColor(COLOR_WINDOWTEXT))) {
         FrameRect(hdc, &rc, hBrush);
         DeleteObject(hBrush);
      }

      ReleaseDC(hwndDriveBar, hdc);

   } else {
      InvalidateRect(hwndDriveBar, &rcDrive, TRUE);
      UpdateWindow(hwndDriveBar);
   }
}
