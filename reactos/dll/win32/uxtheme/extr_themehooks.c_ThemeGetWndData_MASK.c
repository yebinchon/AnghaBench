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
typedef  int /*<<< orphan*/  WND_DATA ;
typedef  int /*<<< orphan*/ * PWND_DATA ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  atWndContext ; 

PWND_DATA FUNC5(HWND hWnd)
{
    PWND_DATA pwndData;

    pwndData = (PWND_DATA)FUNC1(hWnd, (LPCWSTR)FUNC3(atWndContext));
    if(pwndData == NULL)
    {
        pwndData = FUNC2(FUNC0(), 
                            HEAP_ZERO_MEMORY, 
                            sizeof(WND_DATA));
        if(pwndData == NULL)
        {
            return NULL;
        }
        
        FUNC4( hWnd, (LPCWSTR)FUNC3(atWndContext), pwndData);
    }

    return pwndData;
}