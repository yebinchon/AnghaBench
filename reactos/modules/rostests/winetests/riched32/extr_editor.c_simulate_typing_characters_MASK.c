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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const,int) ; 
 int /*<<< orphan*/  WM_CHAR ; 
 int /*<<< orphan*/  WM_KEYDOWN ; 
 int /*<<< orphan*/  WM_KEYUP ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const,int) ; 

__attribute__((used)) static void FUNC2(HWND hwnd, const char* szChars)
{
    int ret;

    while (*szChars != '\0') {
        FUNC0(hwnd, WM_KEYDOWN, *szChars, 1);
        ret = FUNC0(hwnd, WM_CHAR, *szChars, 1);
        FUNC1(ret == 0, "WM_CHAR('%c') ret=%d\n", *szChars, ret);
        FUNC0(hwnd, WM_KEYUP, *szChars, 1);
        szChars++;
    }
}