#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rbmi ;
typedef  int /*<<< orphan*/  ptf ;
struct TYPE_9__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
struct TYPE_11__ {TYPE_1__ bmiHeader; } ;
struct TYPE_10__ {int X; int Y; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_2__ GpPointF ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  TYPE_2__ BYTE ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_4__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  NotImplemented ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    GpStatus status;
    GpGraphics *graphics = NULL;
    GpPointF ptf[4];
    GpBitmap *bm = NULL;
    BYTE rbmi[sizeof(BITMAPINFOHEADER)];
    BYTE buff[400];
    BITMAPINFO *bmi = (BITMAPINFO*)rbmi;
    HDC hdc = FUNC5( hwnd );
    if (!hdc)
        return;

    FUNC8(rbmi, 0, sizeof(rbmi));
    bmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi->bmiHeader.biWidth = 10;
    bmi->bmiHeader.biHeight = 10;
    bmi->bmiHeader.biPlanes = 1;
    bmi->bmiHeader.biBitCount = 32;
    bmi->bmiHeader.biCompression = BI_RGB;
    status = FUNC0(bmi, buff, &bm);
    FUNC7(Ok, status);
    FUNC9(NULL != bm, "Expected bitmap to be initialized\n");
    status = FUNC1(hdc, &graphics);
    FUNC7(Ok, status);
    ptf[0].X = 0;
    ptf[0].Y = 0;
    ptf[1].X = 10;
    ptf[1].Y = 0;
    ptf[2].X = 0;
    ptf[2].Y = 10;
    ptf[3].X = 10;
    ptf[3].Y = 10;
    status = FUNC4(graphics, (GpImage*)bm, ptf, 4, 0, 0, 10, 10, UnitPixel, NULL, NULL, NULL);
    FUNC7(NotImplemented, status);
    status = FUNC4(graphics, (GpImage*)bm, ptf, 2, 0, 0, 10, 10, UnitPixel, NULL, NULL, NULL);
    FUNC7(InvalidParameter, status);
    status = FUNC4(graphics, (GpImage*)bm, ptf, 3, 0, 0, 10, 10, UnitPixel, NULL, NULL, NULL);
    FUNC7(Ok, status);
    status = FUNC4(graphics, NULL, ptf, 3, 0, 0, 10, 10, UnitPixel, NULL, NULL, NULL);
    FUNC7(InvalidParameter, status);
    status = FUNC4(graphics, (GpImage*)bm, NULL, 3, 0, 0, 10, 10, UnitPixel, NULL, NULL, NULL);
    FUNC7(InvalidParameter, status);
    status = FUNC4(graphics, (GpImage*)bm, ptf, 3, 0, 0, 0, 0, UnitPixel, NULL, NULL, NULL);
    FUNC7(Ok, status);
    FUNC8(ptf, 0, sizeof(ptf));
    status = FUNC4(graphics, (GpImage*)bm, ptf, 3, 0, 0, 10, 10, UnitPixel, NULL, NULL, NULL);
    FUNC7(Ok, status);

    FUNC3((GpImage*)bm);
    FUNC2(graphics);
    FUNC6(hwnd, hdc);
}