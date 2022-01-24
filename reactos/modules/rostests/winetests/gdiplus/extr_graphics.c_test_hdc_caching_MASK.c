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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {int biSize; int biHeight; int biWidth; int biBitCount; int biPlanes; scalar_t__ biClrUsed; int /*<<< orphan*/  biCompression; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpSolidFill ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  TYPE_2__ BITMAPINFO ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC17(void)
{
    GpStatus status;
    HDC hdc;
    HBITMAP hbm;
    GpGraphics *graphics;
    ULONG *bits;
    BITMAPINFO bmi;
    HRGN hrgn;
    GpBrush *brush;

    hdc = FUNC0(0);
    FUNC16(hdc != NULL, "CreateCompatibleDC failed\n");
    bmi.bmiHeader.biSize = sizeof(bmi.bmiHeader);
    bmi.bmiHeader.biHeight = -5;
    bmi.bmiHeader.biWidth = 5;
    bmi.bmiHeader.biBitCount = 32;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biCompression = BI_RGB;
    bmi.bmiHeader.biClrUsed = 0;

    hbm = FUNC1(hdc, &bmi, DIB_RGB_COLORS, (void**)&bits, NULL, 0);
    FUNC16(hbm != NULL, "CreateDIBSection failed\n");

    FUNC12(hdc, hbm);

    FUNC13(hdc, 1, 1, NULL);

    hrgn = FUNC2(0, 0, 3, 3);
    FUNC11(hdc, hrgn);
    FUNC4(hrgn);

    status = FUNC6((ARGB)0xffaaaaaa, (GpSolidFill**)&brush);
    FUNC14(Ok, status);

    status = FUNC5(hdc, &graphics);
    FUNC14(Ok, status);

    FUNC15(bits, 0, sizeof(*bits) * 25);
    status = FUNC9(graphics, brush, 0, 0, 4, 4);
    FUNC14(Ok, status);

    FUNC14(0, bits[0]);
    FUNC14(0xffaaaaaa, bits[6]);
    FUNC14(0xffaaaaaa, bits[12]);
    FUNC14(0, bits[18]);
    FUNC14(0, bits[24]);

    FUNC13(hdc, 0, 0, NULL);
    FUNC10(hdc, 2, 2);

    FUNC15(bits, 0, sizeof(*bits) * 25);
    status = FUNC9(graphics, brush, 0, 0, 4, 4);
    FUNC14(Ok, status);

    FUNC14(0, bits[0]);
    FUNC14(0xffaaaaaa, bits[6]);
    FUNC14(0xffaaaaaa, bits[12]);
    FUNC14(0, bits[18]);
    FUNC14(0, bits[24]);

    FUNC8(graphics);

    FUNC7(brush);

    FUNC3(hdc);
    FUNC4(hbm);
}