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
typedef  int /*<<< orphan*/  bmi ;
struct TYPE_5__ {int biSize; int biBitCount; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static int FUNC6(HBITMAP bmp)
{
    BITMAPINFO bmi;
    HDC hdc = FUNC0(0);
    HBITMAP hOldBmp = FUNC3(hdc, bmp);
    int ret;

    FUNC4(&bmi, 0, sizeof(bmi));
    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    ret = FUNC2(hdc, bmp, 0, 0, 0, &bmi, DIB_RGB_COLORS);
    FUNC5(ret, "GetDIBits failed\n");

    FUNC3(hdc, hOldBmp);
    FUNC1(hdc);
    return bmi.bmiHeader.biBitCount;
}