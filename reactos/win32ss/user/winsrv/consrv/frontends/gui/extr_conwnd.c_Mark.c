
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int ViewOrigin; } ;
struct TYPE_6__ {int dwFlags; } ;
struct TYPE_7__ {int dwSelectionCursor; TYPE_1__ Selection; TYPE_3__* ActiveBuffer; } ;
typedef TYPE_2__* PGUI_CONSOLE_DATA ;
typedef TYPE_3__* PCONSOLE_SCREEN_BUFFER ;


 int CONSOLE_NO_SELECTION ;
 int UpdateSelection (TYPE_2__*,int *,int *) ;

__attribute__((used)) static VOID
Mark(PGUI_CONSOLE_DATA GuiData)
{
    PCONSOLE_SCREEN_BUFFER ActiveBuffer = GuiData->ActiveBuffer;


    GuiData->Selection.dwFlags = CONSOLE_NO_SELECTION;


    GuiData->dwSelectionCursor = ActiveBuffer->ViewOrigin;
    UpdateSelection(GuiData,
                    &GuiData->dwSelectionCursor,
                    &GuiData->dwSelectionCursor);
}
