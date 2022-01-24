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
typedef  int LRESULT ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TB_GETBUTTONSIZE ; 
 int /*<<< orphan*/  TB_SETBUTTONSIZE ; 
 int /*<<< orphan*/  TOOLBARCLASSNAMEW ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

void FUNC5()
{
    HWND hwnd;
    LRESULT bsize;

    hwnd = FUNC0(0, TOOLBARCLASSNAMEW, L"Test", 0, 0, 0, 0, 0, 0, 0, 0, NULL);
    FUNC4(hwnd != NULL, "CreateWindowEx failed\n");

    bsize = FUNC3(hwnd, TB_GETBUTTONSIZE, 0, 0);
    FUNC4(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    FUNC3(hwnd, TB_SETBUTTONSIZE, 0, FUNC2(0, 0));
    bsize = FUNC3(hwnd, TB_GETBUTTONSIZE, 0, 0);
    FUNC4(bsize == 0x160018, "Expected 0x160018 got %lx\n", bsize);

    FUNC3(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);
    bsize = FUNC3(hwnd, TB_GETBUTTONSIZE, 0, 0);
    FUNC4(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    FUNC3(hwnd, TB_SETBUTTONSIZE, 0, 0x100001);
    bsize = FUNC3(hwnd, TB_GETBUTTONSIZE, 0, 0);
    FUNC4(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    FUNC3(hwnd, TB_SETBUTTONSIZE, 0, 0x160017);
    bsize = FUNC3(hwnd, TB_GETBUTTONSIZE, 0, 0);
    FUNC4(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    FUNC3(hwnd, TB_SETBUTTONSIZE, 0, 0x170017);
    bsize = FUNC3(hwnd, TB_GETBUTTONSIZE, 0, 0);
    FUNC4(bsize == 0x170017, "Expected 0x170017 got %lx\n", bsize);

    FUNC1(hwnd);
}