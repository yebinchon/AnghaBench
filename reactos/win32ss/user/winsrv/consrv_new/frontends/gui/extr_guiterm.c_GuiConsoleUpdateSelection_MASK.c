#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_19__ {void* Bottom; void* Right; void* Top; void* Left; } ;
struct TYPE_17__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_18__ {int dwFlags; TYPE_4__ srSelection; TYPE_2__ dwSelectionAnchor; } ;
struct TYPE_21__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_16__ {TYPE_5__* Data; } ;
struct TYPE_22__ {TYPE_3__ Selection; TYPE_6__ dwSelectionCursor; TYPE_1__ TermIFace; } ;
struct TYPE_20__ {int /*<<< orphan*/  hWindow; } ;
typedef  TYPE_4__ SMALL_RECT ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_5__* PGUI_CONSOLE_DATA ;
typedef  TYPE_6__* PCOORD ;
typedef  TYPE_7__* PCONSOLE ;
typedef  int /*<<< orphan*/  HRGN ;

/* Variables and functions */
 int CONSOLE_NO_SELECTION ; 
 int CONSOLE_SELECTION_NOT_EMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAUSED_FROM_SELECTION ; 
 int /*<<< orphan*/  RGN_XOR ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_4__*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC11(PCONSOLE Console, PCOORD coord)
{
    PGUI_CONSOLE_DATA GuiData = Console->TermIFace.Data;
    RECT oldRect, newRect;

    FUNC7(GuiData, &oldRect, &Console->Selection.srSelection);

    if (coord != NULL)
    {
        SMALL_RECT rc;
        /* exchange left/top with right/bottom if required */
        rc.Left   = FUNC10(Console->Selection.dwSelectionAnchor.X, coord->X);
        rc.Top    = FUNC10(Console->Selection.dwSelectionAnchor.Y, coord->Y);
        rc.Right  = FUNC8(Console->Selection.dwSelectionAnchor.X, coord->X);
        rc.Bottom = FUNC8(Console->Selection.dwSelectionAnchor.Y, coord->Y);

        FUNC7(GuiData, &newRect, &rc);

        if (Console->Selection.dwFlags & CONSOLE_SELECTION_NOT_EMPTY)
        {
            if (FUNC9(&rc, &Console->Selection.srSelection, sizeof(SMALL_RECT)) != 0)
            {
                HRGN rgn1, rgn2;

                /* calculate the region that needs to be updated */
                if ((rgn1 = FUNC3(&oldRect)))
                {
                    if ((rgn2 = FUNC3(&newRect)))
                    {
                        if (FUNC0(rgn1, rgn2, rgn1, RGN_XOR) != ERROR)
                        {
                            FUNC6(GuiData->hWindow, rgn1, FALSE);
                        }
                        FUNC4(rgn2);
                    }
                    FUNC4(rgn1);
                }
            }
        }
        else
        {
            FUNC5(GuiData->hWindow, &newRect, FALSE);
        }
        Console->Selection.dwFlags |= CONSOLE_SELECTION_NOT_EMPTY;
        Console->Selection.srSelection = rc;
        Console->dwSelectionCursor = *coord;
        FUNC1(Console, PAUSED_FROM_SELECTION);
    }
    else
    {
        /* clear the selection */
        if (Console->Selection.dwFlags & CONSOLE_SELECTION_NOT_EMPTY)
        {
            FUNC5(GuiData->hWindow, &oldRect, FALSE);
        }
        Console->Selection.dwFlags = CONSOLE_NO_SELECTION;
        FUNC2(Console, PAUSED_FROM_SELECTION);
    }
}