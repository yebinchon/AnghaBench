#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bmi ;
struct TYPE_8__ {int biSize; int biBitCount; int biPlanes; int /*<<< orphan*/  biCompression; void* biWidth; void* biHeight; } ;
struct TYPE_10__ {TYPE_1__ bmiHeader; } ;
struct TYPE_9__ {void* member_2; void* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RECT ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  TYPE_3__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HBITMAP FUNC9(INT cx, INT cy, COLORREF color, const char *comment)
{
    HDC hdc;
    BITMAPINFO bmi;
    HBITMAP hbmp, hbmp_old;
    HBRUSH hbrush;
    RECT rc = { 0, 0, cx, cy };

    hdc = FUNC0(0);

    FUNC8(&bmi, 0, sizeof(bmi));
    bmi.bmiHeader.biSize = sizeof(bmi.bmiHeader);
    bmi.bmiHeader.biHeight = cx;
    bmi.bmiHeader.biWidth = cy;
    bmi.bmiHeader.biBitCount = 24;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biCompression = BI_RGB;
    hbmp = FUNC1(hdc, &bmi, DIB_RGB_COLORS, NULL, NULL, 0);

    hbmp_old = FUNC7(hdc, hbmp);

    hbrush = FUNC2(color);
    FUNC6(hdc, &rc, hbrush);
    FUNC4(hbrush);

    FUNC5(hdc, comment, -1, &rc, DT_CENTER | DT_VCENTER | DT_SINGLELINE);

    FUNC7(hdc, hbmp_old);
    FUNC3(hdc);

    return hbmp;
}