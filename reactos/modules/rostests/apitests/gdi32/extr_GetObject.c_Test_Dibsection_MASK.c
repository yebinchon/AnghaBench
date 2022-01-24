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
typedef  int UINT_PTR ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_7; int member_8; int /*<<< orphan*/  member_10; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; } ;
struct TYPE_10__ {TYPE_1__ member_0; } ;
struct TYPE_9__ {scalar_t__ bmBits; int /*<<< orphan*/  bmBitsPixel; int /*<<< orphan*/  bmPlanes; int /*<<< orphan*/  bmWidthBytes; int /*<<< orphan*/  bmHeight; int /*<<< orphan*/  bmWidth; int /*<<< orphan*/  bmType; } ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_2__ DIBSECTION ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_3__ BITMAPINFO ;
typedef  TYPE_2__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

void
FUNC13(void)
{
    BITMAPINFO bmi = {{sizeof(BITMAPINFOHEADER), 10, 9, 1, 16, BI_RGB, 0, 10, 10, 0,0}};
    HBITMAP hBitmap;
    BITMAP bitmap;
    DIBSECTION dibsection;
    PVOID pData;
    HDC hDC;

    FUNC2(&dibsection, sizeof(DIBSECTION), 0x77);
    hDC = FUNC3(0);
    hBitmap = FUNC0(hDC, &bmi, DIB_RGB_COLORS, &pData, NULL, 0);
    FUNC10(hBitmap != 0, "CreateDIBSection failed with %ld, skipping tests.\n", FUNC4());
    if (!hBitmap) return;

    FUNC10(FUNC6((HANDLE)((UINT_PTR)hBitmap & 0x0000ffff), 0, NULL) == sizeof(BITMAP), "\n");
    FUNC10(FUNC7((HANDLE)((UINT_PTR)hBitmap & 0x0000ffff), 0, NULL) == sizeof(BITMAP), "\n");

    FUNC9(ERROR_SUCCESS);
    FUNC12(FUNC5(hBitmap, sizeof(DIBSECTION), NULL), sizeof(BITMAP));
    FUNC12(FUNC5(hBitmap, 0, NULL), sizeof(BITMAP));
    FUNC12(FUNC5(hBitmap, 5, NULL), sizeof(BITMAP));
    FUNC12(FUNC5(hBitmap, -5, NULL), sizeof(BITMAP));
    FUNC12(FUNC5(hBitmap, 0, &dibsection), 0);
    FUNC12(FUNC5(hBitmap, 5, &dibsection), 0);
    FUNC12(FUNC5(hBitmap, sizeof(BITMAP), &bitmap), sizeof(BITMAP));
    FUNC12(FUNC5(hBitmap, sizeof(BITMAP)+2, &bitmap), sizeof(BITMAP));
    FUNC12(bitmap.bmType, 0);
    FUNC12(bitmap.bmWidth, 10);
    FUNC12(bitmap.bmHeight, 9);
    FUNC12(bitmap.bmWidthBytes, 20);
    FUNC12(bitmap.bmPlanes, 1);
    FUNC12(bitmap.bmBitsPixel, 16);
    FUNC10(bitmap.bmBits == pData, "\n");
    FUNC12(FUNC5(hBitmap, sizeof(DIBSECTION), &dibsection), sizeof(DIBSECTION));
    FUNC12(FUNC5(hBitmap, sizeof(DIBSECTION)+2, &dibsection), sizeof(DIBSECTION));
    FUNC12(FUNC5(hBitmap, -5, &dibsection), sizeof(DIBSECTION));
    FUNC11(ERROR_SUCCESS);
    FUNC1(hBitmap);
    FUNC8(0, hDC);
}