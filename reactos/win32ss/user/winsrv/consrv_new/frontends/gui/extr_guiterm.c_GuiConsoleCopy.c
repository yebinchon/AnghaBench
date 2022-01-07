
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int Buffer; } ;
struct TYPE_9__ {TYPE_1__ Title; } ;
struct TYPE_8__ {int hWindow; TYPE_3__* Console; } ;
typedef int PTEXTMODE_SCREEN_BUFFER ;
typedef TYPE_2__* PGUI_CONSOLE_DATA ;
typedef int PGRAPHICS_SCREEN_BUFFER ;
typedef scalar_t__ PCONSOLE_SCREEN_BUFFER ;
typedef TYPE_3__* PCONSOLE ;


 int CloseClipboard () ;
 scalar_t__ ConDrvGetActiveScreenBuffer (TYPE_3__*) ;
 scalar_t__ GetType (scalar_t__) ;
 int GuiConsoleUpdateSelection (TYPE_3__*,int *) ;
 int GuiCopyFromGraphicsBuffer (int ) ;
 int GuiCopyFromTextModeBuffer (int ) ;
 scalar_t__ OpenClipboard (int ) ;
 int SetWindowText (int ,int ) ;
 scalar_t__ TEXTMODE_BUFFER ;

__attribute__((used)) static VOID
GuiConsoleCopy(PGUI_CONSOLE_DATA GuiData)
{
    if (OpenClipboard(GuiData->hWindow))
    {
        PCONSOLE Console = GuiData->Console;
        PCONSOLE_SCREEN_BUFFER Buffer = ConDrvGetActiveScreenBuffer(Console);

        if (GetType(Buffer) == TEXTMODE_BUFFER)
        {
            GuiCopyFromTextModeBuffer((PTEXTMODE_SCREEN_BUFFER)Buffer);
        }
        else
        {
            GuiCopyFromGraphicsBuffer((PGRAPHICS_SCREEN_BUFFER)Buffer);
        }

        CloseClipboard();


        GuiConsoleUpdateSelection(Console, ((void*)0));
        SetWindowText(GuiData->hWindow, Console->Title.Buffer);
    }
}
