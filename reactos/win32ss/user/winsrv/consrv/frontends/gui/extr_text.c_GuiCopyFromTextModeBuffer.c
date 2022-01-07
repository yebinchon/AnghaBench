
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int Bottom; int Right; int Top; int Left; } ;
struct TYPE_6__ {TYPE_4__ srSelection; int dwSelectionAnchor; } ;
struct TYPE_7__ {TYPE_1__ Selection; scalar_t__ LineSelection; } ;
typedef int PTEXTMODE_SCREEN_BUFFER ;
typedef TYPE_2__* PGUI_CONSOLE_DATA ;
typedef int COORD ;
typedef scalar_t__ BOOL ;


 int CopyBlock (int ,TYPE_4__*) ;
 int CopyLines (int ,int *,int *) ;
 int DPRINT (char*,int ,int ,int ,int ,char*) ;
 int GetSelectionBeginEnd (int *,int *,int *,TYPE_4__*) ;

VOID
GuiCopyFromTextModeBuffer(PTEXTMODE_SCREEN_BUFFER Buffer,
                          PGUI_CONSOLE_DATA GuiData)
{




    BOOL LineSelection = GuiData->LineSelection;

    DPRINT("Selection is (%d|%d) to (%d|%d) in %s mode\n",
           GuiData->Selection.srSelection.Left,
           GuiData->Selection.srSelection.Top,
           GuiData->Selection.srSelection.Right,
           GuiData->Selection.srSelection.Bottom,
           (LineSelection ? "line" : "block"));

    if (!LineSelection)
    {
        CopyBlock(Buffer, &GuiData->Selection.srSelection);
    }
    else
    {
        COORD Begin, End;

        GetSelectionBeginEnd(&Begin, &End,
                             &GuiData->Selection.dwSelectionAnchor,
                             &GuiData->Selection.srSelection);

        CopyLines(Buffer, &Begin, &End);
    }
}
