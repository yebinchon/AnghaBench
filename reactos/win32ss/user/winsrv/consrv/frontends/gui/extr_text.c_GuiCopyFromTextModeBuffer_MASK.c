#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_8__ {int /*<<< orphan*/  Bottom; int /*<<< orphan*/  Right; int /*<<< orphan*/  Top; int /*<<< orphan*/  Left; } ;
struct TYPE_6__ {TYPE_4__ srSelection; int /*<<< orphan*/  dwSelectionAnchor; } ;
struct TYPE_7__ {TYPE_1__ Selection; scalar_t__ LineSelection; } ;
typedef  int /*<<< orphan*/  PTEXTMODE_SCREEN_BUFFER ;
typedef  TYPE_2__* PGUI_CONSOLE_DATA ;
typedef  int /*<<< orphan*/  COORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 

VOID
FUNC4(PTEXTMODE_SCREEN_BUFFER Buffer,
                          PGUI_CONSOLE_DATA GuiData)
{
    /*
     * This function supposes that the system clipboard was opened.
     */

    BOOL LineSelection = GuiData->LineSelection;

    FUNC2("Selection is (%d|%d) to (%d|%d) in %s mode\n",
           GuiData->Selection.srSelection.Left,
           GuiData->Selection.srSelection.Top,
           GuiData->Selection.srSelection.Right,
           GuiData->Selection.srSelection.Bottom,
           (LineSelection ? "line" : "block"));

    if (!LineSelection)
    {
        FUNC0(Buffer, &GuiData->Selection.srSelection);
    }
    else
    {
        COORD Begin, End;

        FUNC3(&Begin, &End,
                             &GuiData->Selection.dwSelectionAnchor,
                             &GuiData->Selection.srSelection);

        FUNC1(Buffer, &Begin, &End);
    }
}