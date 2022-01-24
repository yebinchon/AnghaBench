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
typedef  int ULONG_PTR ;
typedef  int ULONG ;
typedef  int* PVOID ;
typedef  int POINT ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int ERROR_INVALID_HANDLE ; 
 int ERROR_INVALID_PARAMETER ; 
 int GDI_HANDLE_BASETYPE_MASK ; 
 int GDI_OBJECT_TYPE_REGION ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static
void
FUNC6(void)
{
    ULONG_PTR ret;
    ULONG Count1[4] = {3, 2, 4, 3};
    ULONG Count2[2] = {0, 3};
    ULONG Count3[2] = {0, 0};
    ULONG Count4[2] = {1, 3};
    ULONG Count5[2] = {0x80000001, 0x80000001};
    POINT Points[6] = {{0,0}, {1,1}, {3,-3}, {-2,2}, {4,2}, {2,4}};
    HDC hDC;

    FUNC4(0);
    ret = FUNC3(NULL, NULL, NULL, 0, 0);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(NULL, NULL, NULL, 0, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(NULL, NULL, NULL, 0, 2);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(NULL, NULL, NULL, 0, 3);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(NULL, NULL, NULL, 0, 4);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(NULL, NULL, NULL, 0, 5);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(NULL, NULL, NULL, 0, 6);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

////////////////////////////////////////////////////////////////////////////////

    /* Test with an invalid DC */

    FUNC4(0);
    ret = FUNC3(0, Points, Count1, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_HANDLE);

    hDC = (HDC)0x12345;

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 0);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_HANDLE);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 2);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_HANDLE);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 3);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_HANDLE);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 4);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_HANDLE);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 5);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_HANDLE);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 6);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3((HDC)1, Points, Count1, 1, 6);
    FUNC5((ret & GDI_HANDLE_BASETYPE_MASK) == GDI_OBJECT_TYPE_REGION);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3((HDC)0, Points, Count1, 1, 6);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 0, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count2, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_HANDLE);

    FUNC4(0);
    ret = FUNC3(hDC, Points, NULL, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, Points, (PVOID)0x81000000, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, NULL, Count1, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, (PVOID)0x81000000, Count1, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);


////////////////////////////////////////////////////////////////////////////////

    /* Test with a valid DC */

    hDC = FUNC1(NULL);
    FUNC0(hDC);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 0);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 1);
    FUNC5(ret == 1);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count1, 2, 2);
    FUNC5(ret == 1);
    FUNC5(FUNC2() == 0);

#if 0
    SetLastError(0);
    // better don't do this on win xp!!! (random crashes)
//    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 3);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_PARAMETER);

    SetLastError(0);
    // better don't do this on win xp!!! (random crashes)
//    ret = NtGdiPolyPolyDraw(hDC, Points, Count1, 2, 4);
    TEST(ret == 0);
    TEST(GetLastError() == ERROR_INVALID_PARAMETER);

#endif

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count2, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_PARAMETER);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count3, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 0);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count4, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == ERROR_INVALID_PARAMETER);

    FUNC4(0);
    ret = FUNC3(hDC, Points, Count5, 2, 1);
    FUNC5(ret == 0);
    FUNC5(FUNC2() == 87);

}