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
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXSIZEFRAME ; 
 int /*<<< orphan*/  SM_CYCAPTION ; 
 int /*<<< orphan*/  SM_CYSIZEFRAME ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static HWND FUNC5(void)
{
    HWND hwnd;

    if (!FUNC4()) return NULL;

    hwnd = FUNC0(0, "MyTestWnd", "Blah", WS_OVERLAPPEDWINDOW,
      CW_USEDEFAULT, CW_USEDEFAULT, 672+2*FUNC2(SM_CXSIZEFRAME),
      226+FUNC2(SM_CYCAPTION)+2*FUNC2(SM_CYSIZEFRAME),
      NULL, NULL, FUNC1(NULL), 0);

    FUNC3(hwnd, SW_SHOW);
    return hwnd;
}