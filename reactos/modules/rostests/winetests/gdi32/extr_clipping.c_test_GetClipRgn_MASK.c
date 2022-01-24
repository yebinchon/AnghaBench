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
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int COMPLEXREGION ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int NULLREGION ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SIMPLEREGION ; 
 int /*<<< orphan*/  SM_CMONITORS ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    HDC hdc;
    HRGN hrgn, hrgn2, hrgn3, hrgn4;
    int ret;

    /* Test calling GetClipRgn with NULL device context and region handles. */
    ret = FUNC3(NULL, NULL);
    FUNC8(ret == -1, "Expected GetClipRgn to return -1, got %d\n", ret);

    hdc = FUNC4(NULL);
    FUNC8(hdc != NULL, "Expected GetDC to return a valid device context handle\n");

    /* Test calling GetClipRgn with a valid device context and NULL region. */
    ret = FUNC3(hdc, NULL);
    FUNC8(ret == 0 ||
       ret == -1 /* Win9x */,
       "Expected GetClipRgn to return 0, got %d\n", ret);

    /* Initialize the test regions. */
    hrgn = FUNC0(100, 100, 100, 100);
    FUNC8(hrgn != NULL,
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");

    hrgn2 = FUNC0(1, 2, 3, 4);
    FUNC8(hrgn2 != NULL,
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");

    hrgn3 = FUNC0(1, 2, 3, 4);
    FUNC8(hrgn3 != NULL,
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");

    hrgn4 = FUNC0(1, 2, 3, 4);
    FUNC8(hrgn4 != NULL,
       "Expected CreateRectRgn to return a handle to a new rectangular region\n");

    /* Try getting a clipping region from the device context
     * when the device context's clipping region isn't set. */
    ret = FUNC3(hdc, hrgn2);
    FUNC8(ret == 0, "Expected GetClipRgn to return 0, got %d\n", ret);

    /* The region passed to GetClipRgn should be unchanged. */
    ret = FUNC2(hrgn2, hrgn3);
    FUNC8(ret == 1,
       "Expected EqualRgn to compare the two regions as equal, got %d\n", ret);

    /* Try setting and getting back a clipping region. */
    ret = FUNC7(hdc, hrgn);
    FUNC8(ret == NULLREGION,
       "Expected SelectClipRgn to return NULLREGION, got %d\n", ret);

    /* Passing a NULL region handle when the device context
     * has a clipping region results in an error. */
    ret = FUNC3(hdc, NULL);
    FUNC8(ret == -1, "Expected GetClipRgn to return -1, got %d\n", ret);

    ret = FUNC3(hdc, hrgn2);
    FUNC8(ret == 1, "Expected GetClipRgn to return 1, got %d\n", ret);

    ret = FUNC2(hrgn, hrgn2);
    FUNC8(ret == 1,
       "Expected EqualRgn to compare the two regions as equal, got %d\n", ret);

    /* Try unsetting and then query the clipping region. */
    ret = FUNC7(hdc, NULL);
    FUNC8(ret == SIMPLEREGION || (ret == COMPLEXREGION && FUNC5(SM_CMONITORS) > 1),
       "Expected SelectClipRgn to return SIMPLEREGION, got %d\n", ret);

    ret = FUNC3(hdc, NULL);
    FUNC8(ret == 0 ||
       ret == -1 /* Win9x */,
       "Expected GetClipRgn to return 0, got %d\n", ret);

    ret = FUNC3(hdc, hrgn3);
    FUNC8(ret == 0, "Expected GetClipRgn to return 0, got %d\n", ret);

    ret = FUNC2(hrgn3, hrgn4);
    FUNC8(ret == 1,
       "Expected EqualRgn to compare the two regions as equal, got %d\n", ret);

    FUNC1(hrgn4);
    FUNC1(hrgn3);
    FUNC1(hrgn2);
    FUNC1(hrgn);
    FUNC6(NULL, hdc);
}