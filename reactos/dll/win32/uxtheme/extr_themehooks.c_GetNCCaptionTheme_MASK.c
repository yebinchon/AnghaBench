#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * hthemeWindow; } ;
typedef  TYPE_1__* PWND_DATA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HTHEME ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  OTD_NONCLIENT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int STAP_ALLOW_NONCLIENT ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int WS_CAPTION ; 

HTHEME FUNC4(HWND hWnd, DWORD style)
{
    PWND_DATA pwndData;

    /* We only get the theme for the window class if the window has a caption */
    if((style & WS_CAPTION) != WS_CAPTION)
        return NULL;

    /* Get theme data for this window */
    pwndData = FUNC3(hWnd);
    if (pwndData == NULL)
        return NULL;

    if (!(FUNC1() & STAP_ALLOW_NONCLIENT))
    {
        if (pwndData->hthemeWindow)
        {
            FUNC0(pwndData->hthemeWindow);
            pwndData->hthemeWindow = NULL;
        }
        return NULL;
    }

    /* If the theme data was not cached, open it now */
    if (!pwndData->hthemeWindow)
        pwndData->hthemeWindow = FUNC2(hWnd, L"WINDOW", OTD_NONCLIENT);

    return pwndData->hthemeWindow;
}