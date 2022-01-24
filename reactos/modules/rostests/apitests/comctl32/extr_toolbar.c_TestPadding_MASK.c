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
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TB_GETBUTTONSIZE ; 
 int /*<<< orphan*/  TB_GETPADDING ; 
 int /*<<< orphan*/  TB_SETBITMAPSIZE ; 
 int /*<<< orphan*/  TB_SETBUTTONSIZE ; 
 int /*<<< orphan*/  TB_SETPADDING ; 
 int /*<<< orphan*/  TOOLBARCLASSNAMEW ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

void FUNC5()
{
    HWND hwnd;
    LRESULT bsize;

    hwnd = FUNC0(0, TOOLBARCLASSNAMEW, L"Test", 0, 0, 0, 0, 0, 0, 0, 0, NULL);
    FUNC4(hwnd != NULL, "CreateWindowEx failed\n");

    bsize = FUNC2(hwnd, TB_GETPADDING, 0, 0);
    FUNC4(bsize == 0x60007, "Expected 0x60007 got %lx\n", bsize);

    FUNC2(hwnd, TB_SETPADDING, 0, 0x10001);
    FUNC2(hwnd, TB_SETBITMAPSIZE, 0, 0x10001);
    FUNC2(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);

    bsize = FUNC2(hwnd, TB_GETPADDING, 0, 0);
    FUNC4(bsize == 0x10001, "Expected 0x10001 got %lx\n", bsize);

    bsize = FUNC2(hwnd, TB_GETBUTTONSIZE, 0, 0);
    FUNC4(bsize == 0x20002, "Expected 0x20002 got %lx\n", bsize);

#if 0 /* Luna specific */
    SetWindowTheme(hwnd, L"TaskBand", NULL);

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x20002, "Expected 0x20002 got %lx\n", bsize);

    bsize = SendMessageW(hwnd, TB_GETPADDING, 0, 0);
    ok(bsize == 0x10001, "Expected 0x10001 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x160006, "Expected 0x160006 got %lx\n", bsize);

    bsize = SendMessageW(hwnd, TB_GETPADDING, 0, 0);
    ok(bsize == 0x10001, "Expected 0x10001 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETPADDING, 0, 0x10001);
    SendMessageW(hwnd, TB_SETBITMAPSIZE, 0, 0x10001);
    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);

    bsize = SendMessageW(hwnd, TB_GETPADDING, 0, 0);
    ok(bsize == 0x10001, "Expected 0x10001 got %lx\n", bsize);

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x160006, "Expected 0x160006 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBITMAPSIZE, 0, 0x10001);
    SendMessageW(hwnd, TB_SETPADDING, 0, 0x20002);
    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x170007, "Expected 0x170007 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBITMAPSIZE, 0, 0x20002);
    SendMessageW(hwnd, TB_SETPADDING, 0, 0x20002);
    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x170008, "Expected 0x170008 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBITMAPSIZE, 0, 0x100010);
    SendMessageW(hwnd, TB_SETPADDING, 0, 0x20002);
    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);

    /* With a big enough image size the button size is bitmap size + pading + theme content margins */
    ok(bsize == 0x1a0016, "Expected 0x1a0016 got %lx\n", bsize);
#endif

    FUNC1(hwnd);
}