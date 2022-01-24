#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  scalar_t__ WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {scalar_t__ FullScreen; } ;
struct TYPE_7__ {int /*<<< orphan*/  IgnoreNextMouseSignal; int /*<<< orphan*/  hWindow; TYPE_1__ GuiInfo; } ;
typedef  TYPE_2__* PGUI_CONSOLE_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  SC_MINIMIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WA_ACTIVE ; 
 scalar_t__ WA_CLICKACTIVE ; 
 int /*<<< orphan*/  WM_SYSCOMMAND ; 

__attribute__((used)) static VOID
FUNC5(PGUI_CONSOLE_DATA GuiData, WPARAM wParam)
{
    WORD ActivationState = FUNC2(wParam);

    FUNC0("WM_ACTIVATE - ActivationState = %d\n", ActivationState);

    if ( ActivationState == WA_ACTIVE ||
         ActivationState == WA_CLICKACTIVE )
    {
        if (GuiData->GuiInfo.FullScreen)
        {
            FUNC1(GuiData);
            // // PostMessageW(GuiData->hWindow, WM_SYSCOMMAND, SC_RESTORE, 0);
            // SendMessageW(GuiData->hWindow, WM_SYSCOMMAND, SC_RESTORE, 0);
        }
    }
    else // if (ActivationState == WA_INACTIVE)
    {
        if (GuiData->GuiInfo.FullScreen)
        {
            FUNC4(GuiData->hWindow, WM_SYSCOMMAND, SC_MINIMIZE, 0);
            FUNC3(GuiData);
            // // PostMessageW(GuiData->hWindow, WM_SYSCOMMAND, SC_MINIMIZE, 0);
            // SendMessageW(GuiData->hWindow, WM_SYSCOMMAND, SC_MINIMIZE, 0);
        }
    }

    /*
     * Ignore the next mouse signal when we are going to be enabled again via
     * the mouse, in order to prevent, e.g. when we are in Edit mode, erroneous
     * mouse actions from the user that could spoil text selection or copy/pastes.
     */
    if (ActivationState == WA_CLICKACTIVE)
        GuiData->IgnoreNextMouseSignal = TRUE;
}