
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef scalar_t__ WPARAM ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int Buffer; int Length; } ;
struct TYPE_18__ {int Y; int X; } ;
struct TYPE_21__ {int dwFlags; TYPE_10__ dwSelectionAnchor; } ;
struct TYPE_25__ {int Lock; TYPE_4__ Title; TYPE_10__ dwSelectionCursor; TYPE_3__ Selection; } ;
struct TYPE_20__ {int Y; int X; } ;
struct TYPE_19__ {int Y; int X; } ;
struct TYPE_24__ {TYPE_2__ ViewSize; TYPE_1__ ViewOrigin; } ;
struct TYPE_23__ {scalar_t__ cmdIdLow; scalar_t__ cmdIdHigh; int hWindow; TYPE_7__* Console; } ;
typedef int SIZE_T ;
typedef TYPE_5__* PGUI_CONSOLE_DATA ;
typedef TYPE_6__* PCONSOLE_SCREEN_BUFFER ;
typedef TYPE_7__* PCONSOLE ;
typedef scalar_t__ LRESULT ;
typedef int * LPWSTR ;
typedef int LPARAM ;


 int CONSOLE_MOUSE_SELECTION ;
 int CONSOLE_RUNNING ;
 int CONSOLE_SELECTION_IN_PROGRESS ;
 TYPE_6__* ConDrvGetActiveScreenBuffer (TYPE_7__*) ;
 int ConDrvValidateConsoleUnsafe (TYPE_7__*,int ,scalar_t__) ;
 int * ConsoleAllocHeap (int ,int) ;
 int ConsoleFreeHeap (int *) ;
 int DPRINT1 (char*) ;
 scalar_t__ DefWindowProcW (int ,int ,scalar_t__,int ) ;
 scalar_t__ FALSE ;
 int GuiConsoleCopy (TYPE_5__*) ;
 int GuiConsolePaste (TYPE_5__*) ;
 int GuiConsoleShowConsoleProperties (TYPE_5__*,scalar_t__) ;
 int GuiConsoleUpdateSelection (TYPE_7__*,TYPE_10__*) ;
 int GuiSendMenuEvent (TYPE_7__*,scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 int SetWindowText (int ,int *) ;
 scalar_t__ TRUE ;
 int WM_SYSCOMMAND ;
 int wcscat (int *,int ) ;
 int wcscpy (int *,char*) ;

__attribute__((used)) static LRESULT
GuiConsoleHandleSysMenuCommand(PGUI_CONSOLE_DATA GuiData, WPARAM wParam, LPARAM lParam)
{
    LRESULT Ret = TRUE;
    PCONSOLE Console = GuiData->Console;
    PCONSOLE_SCREEN_BUFFER ActiveBuffer;

    if (!ConDrvValidateConsoleUnsafe(Console, CONSOLE_RUNNING, TRUE))
    {
        Ret = FALSE;
        goto Quit;
    }
    ActiveBuffer = ConDrvGetActiveScreenBuffer(Console);






    if (GuiData->cmdIdLow <= (UINT)wParam && (UINT)wParam <= GuiData->cmdIdHigh)
    {
        GuiSendMenuEvent(Console, (UINT)wParam);
        goto Unlock_Quit;
    }


    switch (wParam)
    {
        case 132:
        {
            LPWSTR WindowTitle = ((void*)0);
            SIZE_T Length = 0;

            Console->dwSelectionCursor.X = ActiveBuffer->ViewOrigin.X;
            Console->dwSelectionCursor.Y = ActiveBuffer->ViewOrigin.Y;
            Console->Selection.dwSelectionAnchor = Console->dwSelectionCursor;
            Console->Selection.dwFlags |= CONSOLE_SELECTION_IN_PROGRESS;
            GuiConsoleUpdateSelection(Console, &Console->Selection.dwSelectionAnchor);

            Length = Console->Title.Length + sizeof(L"Mark - ")/sizeof(WCHAR) + 1;
            WindowTitle = ConsoleAllocHeap(0, Length * sizeof(WCHAR));
            wcscpy(WindowTitle, L"Mark - ");
            wcscat(WindowTitle, Console->Title.Buffer);
            SetWindowText(GuiData->hWindow, WindowTitle);
            ConsoleFreeHeap(WindowTitle);

            break;
        }

        case 134:
            GuiConsoleCopy(GuiData);
            break;

        case 131:
            GuiConsolePaste(GuiData);
            break;

        case 129:
        {
            LPWSTR WindowTitle = ((void*)0);
            SIZE_T Length = 0;

            Console->Selection.dwSelectionAnchor.X = 0;
            Console->Selection.dwSelectionAnchor.Y = 0;
            Console->dwSelectionCursor.X = ActiveBuffer->ViewSize.X - 1;
            Console->dwSelectionCursor.Y = ActiveBuffer->ViewSize.Y - 1;
            Console->Selection.dwFlags |= CONSOLE_SELECTION_IN_PROGRESS | CONSOLE_MOUSE_SELECTION;
            GuiConsoleUpdateSelection(Console, &Console->dwSelectionCursor);

            Length = Console->Title.Length + sizeof(L"Selection - ")/sizeof(WCHAR) + 1;
            WindowTitle = ConsoleAllocHeap(0, Length * sizeof(WCHAR));
            wcscpy(WindowTitle, L"Selection - ");
            wcscat(WindowTitle, Console->Title.Buffer);
            SetWindowText(GuiData->hWindow, WindowTitle);
            ConsoleFreeHeap(WindowTitle);

            break;
        }

        case 130:
            DPRINT1("Scrolling is not handled yet\n");
            break;

        case 133:
            DPRINT1("Finding is not handled yet\n");
            break;

        case 135:
            GuiConsoleShowConsoleProperties(GuiData, TRUE);
            break;

        case 128:
            GuiConsoleShowConsoleProperties(GuiData, FALSE);
            break;

        default:
            Ret = FALSE;
            break;
    }

Unlock_Quit:
    LeaveCriticalSection(&Console->Lock);
Quit:
    if (!Ret)
        Ret = DefWindowProcW(GuiData->hWindow, WM_SYSCOMMAND, wParam, lParam);

    return Ret;
}
