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
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    HDC hdc = FUNC0("DISPLAY", NULL, NULL, NULL);
    int ret;

    FUNC5(hdc != NULL, "CreateDC rets %p\n", *hdc);

    ret = FUNC3(hdc);
    FUNC5(ret == 1, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 2, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 3, "ret = %d\n", ret);
    ret = FUNC2(hdc, -1);
    FUNC5(ret, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 3, "ret = %d\n", ret);
    ret = FUNC2(hdc, 1);
    FUNC5(ret, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 1, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 2, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 3, "ret = %d\n", ret);
    ret = FUNC2(hdc, -2);
    FUNC5(ret, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 2, "ret = %d\n", ret);
    ret = FUNC2(hdc, -2);
    FUNC5(ret, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 1, "ret = %d\n", ret);
    ret = FUNC3(hdc);
    FUNC5(ret == 2, "ret = %d\n", ret); 
    ret = FUNC2(hdc, -4);
    FUNC5(!ret, "ret = %d\n", ret);
    ret = FUNC2(hdc, 3);
    FUNC5(!ret, "ret = %d\n", ret);

    /* Under Win9x the following RestoreDC call succeeds and clears the save stack. */
    ret = FUNC2(hdc, -3);
    FUNC5(!ret ||
       FUNC4(ret), /* Win9x */
       "ret = %d\n", ret);

    /* Trying to clear an empty save stack fails. */
    ret = FUNC2(hdc, -3);
    FUNC5(!ret, "ret = %d\n", ret);

    ret = FUNC3(hdc);
    FUNC5(ret == 3 ||
       FUNC4(ret == 1), /* Win9x */
       "ret = %d\n", ret);

    /* Under Win9x the following RestoreDC call succeeds and clears the save stack. */
    ret = FUNC2(hdc, 0);
    FUNC5(!ret ||
       FUNC4(ret), /* Win9x */
       "ret = %d\n", ret);

    /* Trying to clear an empty save stack fails. */
    ret = FUNC2(hdc, 0);
    FUNC5(!ret, "ret = %d\n", ret);

    ret = FUNC2(hdc, 1);
    FUNC5(ret ||
       FUNC4(!ret), /* Win9x */
       "ret = %d\n", ret);

    FUNC1(hdc);
}