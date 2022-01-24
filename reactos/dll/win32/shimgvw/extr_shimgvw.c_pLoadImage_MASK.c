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
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hDispWnd ; 
 int /*<<< orphan*/  image ; 

__attribute__((used)) static void FUNC6(LPWSTR szOpenFileName)
{
    /* check file presence */
    if (FUNC3(szOpenFileName) == 0xFFFFFFFF)
    {
        FUNC1("File %s not found!\n", szOpenFileName);
        return;
    }

    /* load now */
    FUNC2(szOpenFileName, &image);
    if (!image)
    {
        FUNC1("GdipLoadImageFromFile() failed\n");
        return;
    }
    FUNC0();

    /* reset zoom */
    FUNC5();

    /* redraw */
    FUNC4(hDispWnd, NULL, TRUE);
}