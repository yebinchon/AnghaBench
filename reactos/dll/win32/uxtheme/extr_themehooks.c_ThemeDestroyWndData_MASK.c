#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* SetWindowRgn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ hthemeScrollbar; scalar_t__ hthemeWindow; int /*<<< orphan*/ * hTabBackgroundBmp; int /*<<< orphan*/ * hTabBackgroundBrush; scalar_t__ HasThemeRgn; } ;
typedef  TYPE_1__* PWND_DATA ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  atWndContext ; 
 TYPE_2__ g_user32ApiHook ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(HWND hWnd)
{
    PWND_DATA pwndData;
    DWORD ProcessId;

    /*Do not destroy WND_DATA of a window that belong to another process */
    FUNC6(hWnd, &ProcessId);
    if(ProcessId != FUNC2())
    {
        return;
    }

    pwndData = (PWND_DATA)FUNC4(hWnd, (LPCWSTR)FUNC8(atWndContext));
    if(pwndData == NULL)
    {
        return;
    }

    if(pwndData->HasThemeRgn)
    {
        g_user32ApiHook.SetWindowRgn(hWnd, 0, TRUE);
    }

    if (pwndData->hTabBackgroundBrush != NULL)
    {
        FUNC0(FUNC5(hWnd));

        FUNC1(pwndData->hTabBackgroundBrush);
    }

    if (pwndData->hTabBackgroundBmp != NULL)
    {
        FUNC1(pwndData->hTabBackgroundBmp);
    }

    if (pwndData->hthemeWindow)
    {
        FUNC0(pwndData->hthemeWindow);
    }

    if (pwndData->hthemeScrollbar)
    {
        FUNC0(pwndData->hthemeScrollbar);
    }

    FUNC7(FUNC3(), 0, pwndData);

    FUNC9( hWnd, (LPCWSTR)FUNC8(atWndContext), NULL);
}