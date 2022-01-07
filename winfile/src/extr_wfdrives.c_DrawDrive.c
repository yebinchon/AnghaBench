
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int iOffset; } ;
struct TYPE_7__ {int left; int right; int top; int bottom; } ;
typedef scalar_t__ TCHAR ;
typedef TYPE_1__ RECT ;
typedef int INT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int DWORD ;
typedef size_t DRIVEIND ;
typedef size_t DRIVE ;
typedef scalar_t__ BOOL ;


 int BitBlt (int ,int,int,int,int,int ,int ,int,int) ;
 int COLOR_BTNTEXT ;
 int COLOR_HIGHLIGHT ;
 int COLOR_HIGHLIGHTTEXT ;
 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int DrawFocusRect (int ,TYPE_1__*) ;
 int FillRect (int ,TYPE_1__*,int ) ;
 int FrameRect (int ,TYPE_1__*,int ) ;
 int GetSysColor (int ) ;
 int InflateRect (TYPE_1__*,int,int) ;
 int NOMIRRORBITMAP ;
 int SRCCOPY ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRANSPARENT ;
 int TextOut (int ,int,int,scalar_t__*,int) ;
 TYPE_2__* aDriveInfo ;
 size_t chFirstDrive ;
 int dxDrive ;
 int dxDriveBitmap ;
 int dyBorder ;
 int dyDrive ;
 int dyDriveBitmap ;
 int dyFolder ;
 int dyText ;
 int hdcMem ;
 size_t* rgiDrive ;

VOID
DrawDrive(HDC hdc, INT x, INT y, DRIVEIND driveInd, BOOL bCurrent, BOOL bFocus)
{
   RECT rc;
   TCHAR szTemp[2];
   DWORD rgb;
   DRIVE drive;

   drive = rgiDrive[driveInd];

   rc.left = x;
   rc.right = x + dxDrive;
   rc.top = y;
   rc.bottom = y + dyDrive;

   rgb = GetSysColor(COLOR_BTNTEXT);

   if (bCurrent) {
      HBRUSH hbr;

      if (hbr = CreateSolidBrush(GetSysColor(COLOR_HIGHLIGHT))) {
         if (bFocus) {
            rgb = GetSysColor(COLOR_HIGHLIGHTTEXT);
            FillRect(hdc, &rc, hbr);
         } else {
            InflateRect(&rc, -dyBorder, -dyBorder);
            FrameRect(hdc, &rc, hbr);
         }
         DeleteObject(hbr);
      }
   }

   if (bFocus)
      DrawFocusRect(hdc, &rc);

   szTemp[0] = (TCHAR)(chFirstDrive + rgiDrive[driveInd]);
   SetBkMode(hdc, TRANSPARENT);

   rgb = SetTextColor(hdc, rgb);
   TextOut(hdc, x + dxDriveBitmap+(dyBorder*6), y + (dyDrive - dyText) / 2, szTemp, 1);
   SetTextColor(hdc, rgb);

   BitBlt(hdc, x + 4*dyBorder, y + (dyDrive - dyDriveBitmap) / 2, dxDriveBitmap, dyDriveBitmap,
      hdcMem, aDriveInfo[drive].iOffset, 2 * dyFolder, SRCCOPY | NOMIRRORBITMAP);
}
