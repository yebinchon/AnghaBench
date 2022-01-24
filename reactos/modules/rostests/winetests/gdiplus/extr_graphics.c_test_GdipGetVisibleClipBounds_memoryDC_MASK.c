#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ X; scalar_t__ Y; int Width; int Height; } ;
struct TYPE_5__ {int right; int left; int bottom; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_2__ GpRect ;
typedef  int /*<<< orphan*/  GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  CombineModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    HDC hdc,dc;
    HBITMAP bmp;
    HGDIOBJ old;
    RECT rect;
    POINT pt;
    int width = 0;
    int height = 0;
    GpGraphics* graphics = NULL;
    GpRect boundRect;
    GpStatus status;

    FUNC14(FUNC8(hwnd, &rect), "GetClientRect should have succeeded\n");
    width = rect.right - rect.left;
    height = rect.bottom - rect.top;

    dc = FUNC9(hwnd);
    hdc = FUNC1 ( dc );
    bmp = FUNC0 ( dc, width, height );
    old = FUNC11 (hdc, bmp);

    /*change the window origin is the key test point*/
    FUNC12 (hdc, rect.left+10, rect.top+10, &pt);

    status = FUNC4(hdc, &graphics);
    FUNC13(Ok, status);

    status = FUNC6(graphics, &boundRect);
    FUNC13(Ok, status);

    FUNC14(boundRect.X==rect.left+10 &&
       boundRect.Y==rect.top+10 &&
       boundRect.Width==width &&
       boundRect.Height==height, "Expected GdipGetVisibleClipBoundsI ok\n");

    status = FUNC7(graphics, 0, 0, width, height, CombineModeReplace);
    FUNC13(Ok, status);

    status = FUNC6(graphics, &boundRect);
    FUNC13(Ok, status);

    FUNC14(boundRect.X==rect.left+10 &&
       boundRect.Y==rect.top+10 &&
       boundRect.Width==width-10 &&
       boundRect.Height==height-10, "Expected GdipGetVisibleClipBoundsI ok\n");

    FUNC5(graphics);

    FUNC11 (hdc, old);
    FUNC3 (bmp);
    FUNC2 (hdc);
    FUNC10(hwnd, dc);
}