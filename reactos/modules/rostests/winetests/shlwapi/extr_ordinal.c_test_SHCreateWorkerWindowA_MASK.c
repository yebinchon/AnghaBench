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
typedef  int /*<<< orphan*/  cliA ;
struct TYPE_4__ {int style; int cbClsExtra; int cbWndExtra; int lpszMenuName; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int LONG_PTR ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int WS_EX_LAYOUTRTL ; 
 int WS_EX_TOOLWINDOW ; 
 int WS_EX_WINDOWEDGE ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(void)
{
    WNDCLASSA cliA;
    char classA[20];
    HWND hwnd;
    LONG_PTR ret;
    BOOL res;

    hwnd = FUNC9(0, NULL, 0, 0, 0, 0);
    FUNC8(hwnd != 0, "expected window\n");

    FUNC2(hwnd, classA, 20);
    FUNC8(FUNC6(classA, "WorkerA") == 0, "expected WorkerA class, got %s\n", classA);

    ret = FUNC5(hwnd, 0);
    FUNC8(ret == 0, "got %ld\n", ret);

    /* class info */
    FUNC7(&cliA, 0, sizeof(cliA));
    res = FUNC1(FUNC3("shlwapi.dll"), "WorkerA", &cliA);
    FUNC8(res, "failed to get class info\n");
    FUNC8(cliA.style == 0, "got 0x%08x\n", cliA.style);
    FUNC8(cliA.cbClsExtra == 0, "got %d\n", cliA.cbClsExtra);
    FUNC8(cliA.cbWndExtra == sizeof(LONG_PTR), "got %d\n", cliA.cbWndExtra);
    FUNC8(cliA.lpszMenuName == 0, "got %s\n", cliA.lpszMenuName);

    FUNC0(hwnd);

    /* set extra bytes */
    hwnd = FUNC9(0, NULL, 0, 0, 0, 0xdeadbeef);
    FUNC8(hwnd != 0, "expected window\n");

    FUNC2(hwnd, classA, 20);
    FUNC8(FUNC6(classA, "WorkerA") == 0, "expected WorkerA class, got %s\n", classA);

    ret = FUNC5(hwnd, 0);
    FUNC8(ret == 0xdeadbeef, "got %ld\n", ret);

    /* test exstyle */
    ret = FUNC4(hwnd, GWL_EXSTYLE);
    FUNC8(ret == WS_EX_WINDOWEDGE ||
       ret == (WS_EX_WINDOWEDGE|WS_EX_LAYOUTRTL) /* systems with RTL locale */, "0x%08lx\n", ret);

    FUNC0(hwnd);

    hwnd = FUNC9(0, NULL, WS_EX_TOOLWINDOW, 0, 0, 0);
    ret = FUNC4(hwnd, GWL_EXSTYLE);
    FUNC8(ret == (WS_EX_WINDOWEDGE|WS_EX_TOOLWINDOW) ||
       ret == (WS_EX_WINDOWEDGE|WS_EX_TOOLWINDOW|WS_EX_LAYOUTRTL) /* systems with RTL locale */, "0x%08lx\n", ret);
    FUNC0(hwnd);
}