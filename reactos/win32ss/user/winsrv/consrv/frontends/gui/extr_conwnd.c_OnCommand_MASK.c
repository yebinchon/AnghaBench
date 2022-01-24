#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ CmdIdLow; scalar_t__ CmdIdHigh; int /*<<< orphan*/  hWindow; int /*<<< orphan*/  Console; } ;
typedef  TYPE_1__* PGUI_CONSOLE_DATA ;
typedef  int /*<<< orphan*/  PCONSRV_CONSOLE ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
#define  ID_SYSTEM_DEFAULTS 135 
#define  ID_SYSTEM_EDIT_COPY 134 
#define  ID_SYSTEM_EDIT_FIND 133 
#define  ID_SYSTEM_EDIT_MARK 132 
#define  ID_SYSTEM_EDIT_PASTE 131 
#define  ID_SYSTEM_EDIT_SCROLL 130 
#define  ID_SYSTEM_EDIT_SELECTALL 129 
#define  ID_SYSTEM_PROPERTIES 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WM_SYSCOMMAND ; 

__attribute__((used)) static LRESULT
FUNC8(PGUI_CONSOLE_DATA GuiData, WPARAM wParam, LPARAM lParam)
{
    LRESULT Ret = TRUE;
    PCONSRV_CONSOLE Console = GuiData->Console;

    /*
     * In case the selected menu item belongs to the user-reserved menu id range,
     * send to him a menu event and return directly. The user must handle those
     * reserved menu commands...
     */
    if (GuiData->CmdIdLow <= (UINT)wParam && (UINT)wParam <= GuiData->CmdIdHigh)
    {
        FUNC7(Console, (UINT)wParam);
        goto Quit;
    }

    /* ... otherwise, perform actions. */
    switch (wParam)
    {
        case ID_SYSTEM_EDIT_MARK:
            FUNC4(GuiData);
            break;

        case ID_SYSTEM_EDIT_COPY:
            FUNC0(GuiData);
            break;

        case ID_SYSTEM_EDIT_PASTE:
            FUNC5(GuiData);
            break;

        case ID_SYSTEM_EDIT_SELECTALL:
            FUNC6(GuiData);
            break;

        case ID_SYSTEM_EDIT_SCROLL:
            FUNC1("Scrolling is not handled yet\n");
            break;

        case ID_SYSTEM_EDIT_FIND:
            FUNC1("Finding is not handled yet\n");
            break;

        case ID_SYSTEM_DEFAULTS:
            FUNC3(GuiData, TRUE);
            break;

        case ID_SYSTEM_PROPERTIES:
            FUNC3(GuiData, FALSE);
            break;

        default:
            Ret = FALSE;
            break;
    }

Quit:
    if (!Ret)
        Ret = FUNC2(GuiData->hWindow, WM_SYSCOMMAND, wParam, lParam);

    return Ret;
}