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
typedef  int /*<<< orphan*/  wcA ;
typedef  int /*<<< orphan*/  WNDPROC ;
struct TYPE_4__ {int /*<<< orphan*/  hInstance; int /*<<< orphan*/  lpszClassName; int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  ATOM ;

/* Variables and functions */
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(HWND *hwnd, LPCSTR name, WNDPROC wndproc)
{
    WNDCLASSA wcA;
    ATOM aclass;

    FUNC4(&wcA, 0, sizeof(wcA));
    wcA.lpfnWndProc = wndproc;
    wcA.lpszClassName = name;
    wcA.hInstance = FUNC2(0);
    aclass = FUNC3(&wcA);
    FUNC5 (aclass, "RegisterClass failed\n");

    *hwnd = FUNC0(0, name, NULL, WS_POPUP,
                            500, 500, CW_USEDEFAULT, CW_USEDEFAULT,
                            FUNC1(), 0, FUNC2(0), NULL);
    FUNC5(*hwnd != NULL, "CreateWindowExA failed\n");
}