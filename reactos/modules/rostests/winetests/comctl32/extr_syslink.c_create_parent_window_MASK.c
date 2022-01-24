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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int WS_CAPTION ; 
 int WS_MAXIMIZEBOX ; 
 int WS_MINIMIZEBOX ; 
 int WS_SYSMENU ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  parentClassW ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static HWND FUNC4(void)
{
    static const WCHAR titleW[] = {'S','y','s','l','i','n','k',' ','t','e','s','t',' ','p','a','r','e','n','t',' ','w','i','n','d','o','w',0};
    if (!FUNC3())
        return NULL;

    return FUNC0(0, parentClassW, titleW,
                           WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX |
                           WS_MAXIMIZEBOX | WS_VISIBLE,
                           0, 0, 200, 100, FUNC1(),
                           NULL, FUNC2(NULL), NULL);
}