#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT_PTR ;
typedef  scalar_t__ HBITMAP ;
typedef  scalar_t__ HANDLE ;
typedef  int DIBSECTION ;
typedef  int BYTE ;
typedef  int BITMAP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 scalar_t__ GDI_OBJECT_TYPE_BITMAP ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (scalar_t__,int,int*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

void
FUNC8(void)
{
    HBITMAP hBitmap;
    BITMAP bitmap;
    DIBSECTION dibsection;
    BYTE bData[100] = {0};
    BYTE Buffer[100] = {48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,0};

    FUNC2(&bitmap, sizeof(BITMAP), 0x77);
    hBitmap = FUNC0(10,10,1,8,bData);
    FUNC7(hBitmap != 0, "CreateBitmap failed, skipping tests.\n");
    if (!hBitmap) return;

    FUNC6(ERROR_SUCCESS);
    FUNC7(FUNC4((HANDLE)GDI_OBJECT_TYPE_BITMAP, 0, NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC5((HANDLE)GDI_OBJECT_TYPE_BITMAP, 0, NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4((HANDLE)GDI_OBJECT_TYPE_BITMAP, sizeof(BITMAP), NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC3() == ERROR_SUCCESS, "\n");
    FUNC7(FUNC4(hBitmap, sizeof(DIBSECTION), NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4(hBitmap, 0, NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4((HANDLE)((UINT_PTR)hBitmap & 0x0000ffff), 0, NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC5((HANDLE)((UINT_PTR)hBitmap & 0x0000ffff), 0, NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC3() == ERROR_SUCCESS, "\n");
    FUNC7(FUNC4(hBitmap, 5, NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4(hBitmap, -5, NULL) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4(hBitmap, 0, Buffer) == 0, "\n");
    FUNC7(FUNC4(hBitmap, 5, Buffer) == 0, "\n");
    FUNC7(FUNC3() == ERROR_SUCCESS, "\n");
    FUNC7(FUNC4(hBitmap, sizeof(BITMAP), &bitmap) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4(hBitmap, sizeof(BITMAP)+2, &bitmap) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4(hBitmap, sizeof(DIBSECTION), &dibsection) == sizeof(BITMAP), "\n");
    FUNC7(FUNC4(hBitmap, -5, &bitmap) == sizeof(BITMAP), "\n");
    FUNC7(FUNC3() == ERROR_SUCCESS, "\n");
    FUNC7(FUNC4((HANDLE)GDI_OBJECT_TYPE_BITMAP, sizeof(BITMAP), &bitmap) == 0, "\n");
    FUNC7(FUNC3() == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %ld\n", FUNC3());

    // todo: test invalid handle + buffer

    FUNC1(hBitmap);
}