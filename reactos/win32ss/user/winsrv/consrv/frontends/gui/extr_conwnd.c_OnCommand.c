
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ CmdIdLow; scalar_t__ CmdIdHigh; int hWindow; int Console; } ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;
typedef int PCONSRV_CONSOLE ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;


 int Copy (TYPE_1__*) ;
 int DPRINT1 (char*) ;
 scalar_t__ DefWindowProcW (int ,int ,scalar_t__,int ) ;
 scalar_t__ FALSE ;
 int GuiConsoleShowConsoleProperties (TYPE_1__*,scalar_t__) ;
 int Mark (TYPE_1__*) ;
 int Paste (TYPE_1__*) ;
 int SelectAll (TYPE_1__*) ;
 int SendMenuEvent (int ,scalar_t__) ;
 scalar_t__ TRUE ;
 int WM_SYSCOMMAND ;

__attribute__((used)) static LRESULT
OnCommand(PGUI_CONSOLE_DATA GuiData, WPARAM wParam, LPARAM lParam)
{
    LRESULT Ret = TRUE;
    PCONSRV_CONSOLE Console = GuiData->Console;






    if (GuiData->CmdIdLow <= (UINT)wParam && (UINT)wParam <= GuiData->CmdIdHigh)
    {
        SendMenuEvent(Console, (UINT)wParam);
        goto Quit;
    }


    switch (wParam)
    {
        case 132:
            Mark(GuiData);
            break;

        case 134:
            Copy(GuiData);
            break;

        case 131:
            Paste(GuiData);
            break;

        case 129:
            SelectAll(GuiData);
            break;

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

Quit:
    if (!Ret)
        Ret = DefWindowProcW(GuiData->hWindow, WM_SYSCOMMAND, wParam, lParam);

    return Ret;
}
