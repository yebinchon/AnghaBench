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
struct TYPE_4__ {scalar_t__ hBitmap; scalar_t__ hMemDC; scalar_t__ IsWindowVisible; } ;
typedef  TYPE_1__* PGUI_CONSOLE_DATA ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  CONGUI_UPDATE_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_NCDESTROY ; 

__attribute__((used)) static LRESULT
FUNC8(HWND hWnd)
{
    PGUI_CONSOLE_DATA GuiData = FUNC5(hWnd);

    /* Free the GuiData registration */
    FUNC7(hWnd, GWLP_USERDATA, (DWORD_PTR)NULL);

    /* Reset the system menu back to default and destroy the previous menu */
    FUNC4(hWnd, TRUE);

    if (GuiData)
    {
        if (GuiData->IsWindowVisible)
            FUNC6(hWnd, CONGUI_UPDATE_TIMER);

        /* Free the terminal framebuffer */
        if (GuiData->hMemDC ) FUNC1(GuiData->hMemDC);
        if (GuiData->hBitmap) FUNC3(GuiData->hBitmap);
        // if (GuiData->hSysPalette) DeleteObject(GuiData->hSysPalette);
        FUNC2(GuiData);
    }

    return FUNC0(hWnd, WM_NCDESTROY, 0, 0);
}