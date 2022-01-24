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
typedef  scalar_t__ WPARAM ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ISMEX_NOSEND ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ SC_RESTORE ; 
 scalar_t__ WM_ACTIVATE ; 
 scalar_t__ WM_NCACTIVATE ; 
 scalar_t__ WM_SYSCOMMAND ; 
 scalar_t__ WM_TIMER ; 
 scalar_t__ WM_WINDOWPOSCHANGING ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  s_bTracing ; 
 int /*<<< orphan*/  s_nWM_ACTIVATE ; 
 int /*<<< orphan*/  s_nWM_NCACTIVATE ; 
 int /*<<< orphan*/  s_nWM_SYSCOMMAND_NOT_SC_RESTORE ; 
 int /*<<< orphan*/  s_nWM_SYSCOMMAND_SC_RESTORE ; 
 int /*<<< orphan*/  s_nWM_WINDOWPOSCHANGING ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    if (uMsg == WM_TIMER || !s_bTracing)
        return;

    FUNC4("%s: uMsg:0x%04X, wParam:0x%08lX, lParam:0x%08lX, ISMEX_:%s\n",
          (FUNC1() ? "S" : "P"), uMsg, (LONG)wParam, (LONG)lParam,
           FUNC0());

    if (uMsg == WM_SYSCOMMAND)  // 0x0112
    {
        FUNC3(FUNC2(NULL) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", FUNC2(NULL));
        if (wParam == SC_RESTORE)
            ++s_nWM_SYSCOMMAND_SC_RESTORE;
        else
            ++s_nWM_SYSCOMMAND_NOT_SC_RESTORE;
    }

    if (uMsg == WM_NCACTIVATE)  // 0x0086
    {
        FUNC3(FUNC2(NULL) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", FUNC2(NULL));
        ++s_nWM_NCACTIVATE;
    }

    if (uMsg == WM_WINDOWPOSCHANGING)   // 0x0046
    {
        FUNC3(FUNC2(NULL) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", FUNC2(NULL));
        ++s_nWM_WINDOWPOSCHANGING;
    }

    if (uMsg == WM_ACTIVATE)    // 0x0006
    {
        FUNC3(FUNC2(NULL) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", FUNC2(NULL));
        ++s_nWM_ACTIVATE;
    }
}