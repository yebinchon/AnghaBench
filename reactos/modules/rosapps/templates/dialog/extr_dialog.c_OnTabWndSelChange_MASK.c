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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hPage1 ; 
 int /*<<< orphan*/  hPage2 ; 
 int /*<<< orphan*/  hPage3 ; 
 int /*<<< orphan*/  hTabWnd ; 

void FUNC4(void)
{
    switch (FUNC3(hTabWnd)) {
    case 0:
        FUNC2(hPage1, SW_SHOW);
        FUNC2(hPage2, SW_HIDE);
        FUNC2(hPage3, SW_HIDE);
        FUNC0(hPage1);
        FUNC1(hTabWnd);
        break;
    case 1:
        FUNC2(hPage1, SW_HIDE);
        FUNC2(hPage2, SW_SHOW);
        FUNC2(hPage3, SW_HIDE);
        FUNC0(hPage2);
        FUNC1(hTabWnd);
        break;
    case 2:
        FUNC2(hPage1, SW_HIDE);
        FUNC2(hPage2, SW_HIDE);
        FUNC2(hPage3, SW_SHOW);
        FUNC0(hPage3);
        FUNC1(hTabWnd);
        break;
    }
}