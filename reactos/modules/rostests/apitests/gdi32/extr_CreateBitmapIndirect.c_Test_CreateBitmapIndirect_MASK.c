#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bmBitsPixel; int bmHeight; int bmPlanes; int bmType; int bmWidth; int bmWidthBytes; scalar_t__ bmBits; } ;
typedef  scalar_t__ HBITMAP ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4()
{
    HBITMAP win_hBmp;
    BITMAP win_bitmap;

    win_bitmap.bmBits = 0;
    win_bitmap.bmBitsPixel = 1;
    win_bitmap.bmHeight = 0;
    win_bitmap.bmPlanes = 1;
    win_bitmap.bmType = 1;
    win_bitmap.bmWidth = 0;
    win_bitmap.bmWidthBytes = 2;
    win_hBmp = FUNC0(&win_bitmap);
    FUNC3(win_hBmp != 0, "CreateBitmapIndirect failed\n");

    FUNC1(win_hBmp);

    FUNC2(&win_bitmap,sizeof(BITMAP));
    win_bitmap.bmBits = 0;
    win_bitmap.bmBitsPixel = 1;
    win_bitmap.bmHeight = 0;
    win_bitmap.bmPlanes = 1;
    win_bitmap.bmType = 1;
    win_bitmap.bmWidth = 0;
    win_bitmap.bmWidthBytes = 1;
    win_hBmp = FUNC0(&win_bitmap);
    FUNC3(win_hBmp == 0, "CreateBitmapIndirect succeeded\n");

    FUNC2(&win_bitmap,sizeof(BITMAP));
    win_bitmap.bmBits = 0;
    win_bitmap.bmBitsPixel = 1;
    win_bitmap.bmHeight = 0;
    win_bitmap.bmPlanes = 1;
    win_bitmap.bmType = 1;
    win_bitmap.bmWidth = 0;
    win_bitmap.bmWidthBytes = 3;
    win_hBmp = FUNC0(&win_bitmap);
    FUNC3(win_hBmp == 0, "CreateBitmapIndirect succeeded\n");

    FUNC2(&win_bitmap,sizeof(BITMAP));
    win_bitmap.bmBits = 0;
    win_bitmap.bmBitsPixel = 1;
    win_bitmap.bmHeight = 0;
    win_bitmap.bmPlanes = 1;
    win_bitmap.bmType = 1;
    win_bitmap.bmWidth = 0;
    win_bitmap.bmWidthBytes = 4;
    win_hBmp = FUNC0(&win_bitmap);
    FUNC3(win_hBmp != 0, "CreateBitmapIndirect failed\n");

    FUNC2(&win_bitmap,sizeof(BITMAP));
    win_bitmap.bmBits = 0;
    win_bitmap.bmBitsPixel = 8;
    win_bitmap.bmHeight = 0xF000;
    win_bitmap.bmPlanes = 1;
    win_bitmap.bmType = 1;
    win_bitmap.bmWidth = 0x8000;
    win_bitmap.bmWidthBytes = win_bitmap.bmWidth;
    win_hBmp = FUNC0(&win_bitmap);
    //ok(win_hBmp != 0, "CreateBitmapIndirect failed\n"); // fails on win 2003

    FUNC1(win_hBmp);
}