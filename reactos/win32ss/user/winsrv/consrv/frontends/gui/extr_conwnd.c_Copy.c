
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ ActiveBuffer; int hWindow; } ;
typedef int PTEXTMODE_SCREEN_BUFFER ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;
typedef int PGRAPHICS_SCREEN_BUFFER ;
typedef scalar_t__ PCONSOLE_SCREEN_BUFFER ;


 int CloseClipboard () ;
 scalar_t__ GetType (scalar_t__) ;
 int GuiCopyFromGraphicsBuffer (int ,TYPE_1__*) ;
 int GuiCopyFromTextModeBuffer (int ,TYPE_1__*) ;
 scalar_t__ OpenClipboard (int ) ;
 scalar_t__ TEXTMODE_BUFFER ;
 int UpdateSelection (TYPE_1__*,int *,int *) ;

__attribute__((used)) static VOID
Copy(PGUI_CONSOLE_DATA GuiData)
{
    if (OpenClipboard(GuiData->hWindow))
    {
        PCONSOLE_SCREEN_BUFFER Buffer = GuiData->ActiveBuffer;

        if (GetType(Buffer) == TEXTMODE_BUFFER)
        {
            GuiCopyFromTextModeBuffer((PTEXTMODE_SCREEN_BUFFER)Buffer, GuiData);
        }
        else
        {
            GuiCopyFromGraphicsBuffer((PGRAPHICS_SCREEN_BUFFER)Buffer, GuiData);
        }

        CloseClipboard();
    }


    UpdateSelection(GuiData, ((void*)0), ((void*)0));
}
