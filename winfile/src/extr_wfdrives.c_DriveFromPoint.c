
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int left; int right; int top; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ DRIVEIND ;


 int GetClientRect (scalar_t__,TYPE_1__*) ;
 int InflateRect (TYPE_1__*,int ,int ) ;
 scalar_t__ PtInRect (TYPE_1__*,int ) ;
 int bDriveBar ;
 scalar_t__ cDrives ;
 int dxDrive ;
 int dyBorder ;
 int dyDrive ;
 scalar_t__ hwndDriveBar ;

INT
DriveFromPoint(HWND hwnd, POINT pt)
{
   RECT rc, rcDrive;
   INT x, y;

   DRIVEIND driveInd;

   if (!bDriveBar || hwnd != hwndDriveBar)
      return -1;

   GetClientRect(hwndDriveBar, &rc);

   x = 0;
   y = 0;
   driveInd = 0;

   for (driveInd = 0; driveInd < cDrives; driveInd++) {
      rcDrive.left = x;
      rcDrive.right = x + dxDrive;
      rcDrive.top = y;
      rcDrive.bottom = y + dyDrive;
      InflateRect(&rcDrive, -dyBorder, -dyBorder);

      if (PtInRect(&rcDrive, pt))
         return driveInd;

      x += dxDrive;

      if (x + dxDrive > rc.right) {
         x = 0;
         y += dyDrive;
      }
   }

   return -1;
}
