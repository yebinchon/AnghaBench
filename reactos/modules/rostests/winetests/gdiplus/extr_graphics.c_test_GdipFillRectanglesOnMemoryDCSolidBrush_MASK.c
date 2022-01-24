#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int right; int left; int bottom; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  BLUE_COLOR ; 
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int,int) ; 
 int /*<<< orphan*/  hwnd ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int,char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    ARGB color[6] = {0,0,0,0,0,0};
    POINT pt = {0,0};
    RECT rect = {100, 100, 180, 180};
    UINT width = rect.right - rect.left;
    UINT height = rect.bottom - rect.top;
    GpStatus status = 0;
    GpSolidFill *brush = NULL;
    GpGraphics *graphics = NULL;
    HDC dc = FUNC12( hwnd);
    HDC hdc = FUNC1(dc);
    HBITMAP bmp = FUNC0(dc, width, height);
    HGDIOBJ old = FUNC14(hdc, bmp);
    DWORD* pixel = NULL;

    /*Change the window origin is the key test point*/
    FUNC15(hdc, rect.left, rect.top, &pt);

    status = FUNC5(BLUE_COLOR, &brush);
    FUNC16(Ok, status);

    status = FUNC4(hdc, &graphics);
    FUNC16(Ok, status);

    status = FUNC10(graphics, rect.left+width/2, rect.top+height/2,
            width, height, CombineModeReplace);
    FUNC16(Ok, status);

    status = FUNC8(graphics, (GpBrush*)brush, 0, 0, rect.right, rect.bottom);
    FUNC16(Ok, status);

    FUNC6((GpBrush*)brush);
    FUNC7(graphics);

    pixel = FUNC11(hdc, bmp, width, height);
    if (pixel)
    {
       color[0] = FUNC17(width/2, height/2);
       color[1] = FUNC17(width/2+1, height/2);
       color[2] = FUNC17(width/2, height/2+1);
       color[3] = FUNC17(width/2-1, height/2-1);
       color[4] = FUNC17(width/2-1, height-1);
       color[5] = FUNC17(width-1, height/2-1);
    }

    FUNC19(FUNC18(color[0]) && FUNC18(color[1]) && FUNC18(color[2]) &&
       color[3] == 0 && color[4] == 0 && color[5] == 0,
       "Expected GdipFillRectangleI take effect!\n" );
    FUNC9(pixel);

    FUNC14(hdc, old);
    FUNC3(bmp);
    FUNC2(hdc);
    FUNC13(hwnd, dc);
}