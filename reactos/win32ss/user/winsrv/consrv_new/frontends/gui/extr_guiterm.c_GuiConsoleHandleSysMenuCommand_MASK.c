#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  Buffer; int /*<<< orphan*/  Length; } ;
struct TYPE_18__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_21__ {int dwFlags; TYPE_10__ dwSelectionAnchor; } ;
struct TYPE_25__ {int /*<<< orphan*/  Lock; TYPE_4__ Title; TYPE_10__ dwSelectionCursor; TYPE_3__ Selection; } ;
struct TYPE_20__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_19__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_24__ {TYPE_2__ ViewSize; TYPE_1__ ViewOrigin; } ;
struct TYPE_23__ {scalar_t__ cmdIdLow; scalar_t__ cmdIdHigh; int /*<<< orphan*/  hWindow; TYPE_7__* Console; } ;
typedef  int SIZE_T ;
typedef  TYPE_5__* PGUI_CONSOLE_DATA ;
typedef  TYPE_6__* PCONSOLE_SCREEN_BUFFER ;
typedef  TYPE_7__* PCONSOLE ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int CONSOLE_MOUSE_SELECTION ; 
 int /*<<< orphan*/  CONSOLE_RUNNING ; 
 int CONSOLE_SELECTION_IN_PROGRESS ; 
 TYPE_6__* FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,scalar_t__) ; 
#define  ID_SYSTEM_DEFAULTS 135 
#define  ID_SYSTEM_EDIT_COPY 134 
#define  ID_SYSTEM_EDIT_FIND 133 
#define  ID_SYSTEM_EDIT_MARK 132 
#define  ID_SYSTEM_EDIT_PASTE 131 
#define  ID_SYSTEM_EDIT_SCROLL 130 
#define  ID_SYSTEM_EDIT_SELECTALL 129 
#define  ID_SYSTEM_PROPERTIES 128 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WM_SYSCOMMAND ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static LRESULT
FUNC15(PGUI_CONSOLE_DATA GuiData, WPARAM wParam, LPARAM lParam)
{
    LRESULT Ret = TRUE;
    PCONSOLE Console = GuiData->Console;
    PCONSOLE_SCREEN_BUFFER ActiveBuffer;

    if (!FUNC1(Console, CONSOLE_RUNNING, TRUE))
    {
        Ret = FALSE;
        goto Quit;
    }
    ActiveBuffer = FUNC0(Console);

    /*
     * In case the selected menu item belongs to the user-reserved menu id range,
     * send to him a menu event and return directly. The user must handle those
     * reserved menu commands...
     */
    if (GuiData->cmdIdLow <= (UINT)wParam && (UINT)wParam <= GuiData->cmdIdHigh)
    {
        FUNC10(Console, (UINT)wParam);
        goto Unlock_Quit;
    }

    /* ... otherwise, perform actions. */
    switch (wParam)
    {
        case ID_SYSTEM_EDIT_MARK:
        {
            LPWSTR WindowTitle = NULL;
            SIZE_T Length = 0;

            Console->dwSelectionCursor.X = ActiveBuffer->ViewOrigin.X;
            Console->dwSelectionCursor.Y = ActiveBuffer->ViewOrigin.Y;
            Console->Selection.dwSelectionAnchor = Console->dwSelectionCursor;
            Console->Selection.dwFlags |= CONSOLE_SELECTION_IN_PROGRESS;
            FUNC9(Console, &Console->Selection.dwSelectionAnchor);

            Length = Console->Title.Length + sizeof(L"Mark - ")/sizeof(WCHAR) + 1;
            WindowTitle = FUNC2(0, Length * sizeof(WCHAR));
            FUNC14(WindowTitle, L"Mark - ");
            FUNC13(WindowTitle, Console->Title.Buffer);
            FUNC12(GuiData->hWindow, WindowTitle);
            FUNC3(WindowTitle);

            break;
        }

        case ID_SYSTEM_EDIT_COPY:
            FUNC6(GuiData);
            break;

        case ID_SYSTEM_EDIT_PASTE:
            FUNC7(GuiData);
            break;

        case ID_SYSTEM_EDIT_SELECTALL:
        {
            LPWSTR WindowTitle = NULL;
            SIZE_T Length = 0;

            Console->Selection.dwSelectionAnchor.X = 0;
            Console->Selection.dwSelectionAnchor.Y = 0;
            Console->dwSelectionCursor.X = ActiveBuffer->ViewSize.X - 1;
            Console->dwSelectionCursor.Y = ActiveBuffer->ViewSize.Y - 1;
            Console->Selection.dwFlags |= CONSOLE_SELECTION_IN_PROGRESS | CONSOLE_MOUSE_SELECTION;
            FUNC9(Console, &Console->dwSelectionCursor);

            Length = Console->Title.Length + sizeof(L"Selection - ")/sizeof(WCHAR) + 1;
            WindowTitle = FUNC2(0, Length * sizeof(WCHAR));
            FUNC14(WindowTitle, L"Selection - ");
            FUNC13(WindowTitle, Console->Title.Buffer);
            FUNC12(GuiData->hWindow, WindowTitle);
            FUNC3(WindowTitle);

            break;
        }

        case ID_SYSTEM_EDIT_SCROLL:
            FUNC4("Scrolling is not handled yet\n");
            break;

        case ID_SYSTEM_EDIT_FIND:
            FUNC4("Finding is not handled yet\n");
            break;

        case ID_SYSTEM_DEFAULTS:
            FUNC8(GuiData, TRUE);
            break;

        case ID_SYSTEM_PROPERTIES:
            FUNC8(GuiData, FALSE);
            break;

        default:
            Ret = FALSE;
            break;
    }

Unlock_Quit:
    FUNC11(&Console->Lock);
Quit:
    if (!Ret)
        Ret = FUNC5(GuiData->hWindow, WM_SYSCOMMAND, wParam, lParam);

    return Ret;
}