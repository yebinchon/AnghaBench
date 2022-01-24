#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_8__ {int /*<<< orphan*/  iOffset; } ;
struct TYPE_7__ {int left; int right; int top; int bottom; } ;
typedef  scalar_t__ TCHAR ;
typedef  TYPE_1__ RECT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  size_t DRIVEIND ;
typedef  size_t DRIVE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  COLOR_BTNTEXT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHTTEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int NOMIRRORBITMAP ; 
 int SRCCOPY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,scalar_t__*,int) ; 
 TYPE_2__* aDriveInfo ; 
 size_t chFirstDrive ; 
 int dxDrive ; 
 int dxDriveBitmap ; 
 int dyBorder ; 
 int dyDrive ; 
 int dyDriveBitmap ; 
 int dyFolder ; 
 int dyText ; 
 int /*<<< orphan*/  hdcMem ; 
 size_t* rgiDrive ; 

VOID
FUNC11(HDC hdc, INT x, INT y, DRIVEIND driveInd, BOOL bCurrent, BOOL bFocus)
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

   rgb = FUNC6(COLOR_BTNTEXT);

   if (bCurrent) {
      HBRUSH hbr;

      if ((hbr = FUNC1(FUNC6(COLOR_HIGHLIGHT)))) {
         if (bFocus) {
            rgb = FUNC6(COLOR_HIGHLIGHTTEXT);
            FUNC4(hdc, &rc, hbr);
         } else {
            FUNC7(&rc, -dyBorder, -dyBorder);
            FUNC5(hdc, &rc, hbr);
         }
         FUNC2(hbr);
      }
   }

   if (bFocus)
      FUNC3(hdc, &rc);

   szTemp[0] = (TCHAR)(chFirstDrive + rgiDrive[driveInd]);
   FUNC8(hdc, TRANSPARENT);

   rgb = FUNC9(hdc, rgb);
   FUNC10(hdc, x + dxDriveBitmap+(dyBorder*6), y + (dyDrive - dyText) / 2, szTemp, 1);
   FUNC9(hdc, rgb);

   FUNC0(hdc, x + 4*dyBorder, y + (dyDrive - dyDriveBitmap) / 2, dxDriveBitmap, dyDriveBitmap,
      hdcMem, aDriveInfo[drive].iOffset, 2 * dyFolder, SRCCOPY | NOMIRRORBITMAP);
}