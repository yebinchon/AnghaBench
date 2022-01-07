
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int Console; int hWindow; } ;
typedef int PTEXTMODE_SCREEN_BUFFER ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;
typedef int PGRAPHICS_SCREEN_BUFFER ;
typedef scalar_t__ PCONSOLE_SCREEN_BUFFER ;
typedef int PCONSOLE ;


 int CloseClipboard () ;
 scalar_t__ ConDrvGetActiveScreenBuffer (int ) ;
 scalar_t__ GetType (scalar_t__) ;
 int GuiPasteToGraphicsBuffer (int ) ;
 int GuiPasteToTextModeBuffer (int ) ;
 scalar_t__ OpenClipboard (int ) ;
 scalar_t__ TEXTMODE_BUFFER ;

__attribute__((used)) static VOID
GuiConsolePaste(PGUI_CONSOLE_DATA GuiData)
{
    if (OpenClipboard(GuiData->hWindow))
    {
        PCONSOLE Console = GuiData->Console;
        PCONSOLE_SCREEN_BUFFER Buffer = ConDrvGetActiveScreenBuffer(Console);

        if (GetType(Buffer) == TEXTMODE_BUFFER)
        {
            GuiPasteToTextModeBuffer((PTEXTMODE_SCREEN_BUFFER)Buffer);
        }
        else
        {
            GuiPasteToGraphicsBuffer((PGRAPHICS_SCREEN_BUFFER)Buffer);
        }

        CloseClipboard();
    }
}
