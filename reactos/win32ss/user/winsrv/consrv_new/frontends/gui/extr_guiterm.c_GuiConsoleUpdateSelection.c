
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_19__ {void* Bottom; void* Right; void* Top; void* Left; } ;
struct TYPE_17__ {int Y; int X; } ;
struct TYPE_18__ {int dwFlags; TYPE_4__ srSelection; TYPE_2__ dwSelectionAnchor; } ;
struct TYPE_21__ {int Y; int X; } ;
struct TYPE_16__ {TYPE_5__* Data; } ;
struct TYPE_22__ {TYPE_3__ Selection; TYPE_6__ dwSelectionCursor; TYPE_1__ TermIFace; } ;
struct TYPE_20__ {int hWindow; } ;
typedef TYPE_4__ SMALL_RECT ;
typedef int RECT ;
typedef TYPE_5__* PGUI_CONSOLE_DATA ;
typedef TYPE_6__* PCOORD ;
typedef TYPE_7__* PCONSOLE ;
typedef int HRGN ;


 int CONSOLE_NO_SELECTION ;
 int CONSOLE_SELECTION_NOT_EMPTY ;
 scalar_t__ CombineRgn (int ,int ,int ,int ) ;
 int ConioPause (TYPE_7__*,int ) ;
 int ConioUnpause (TYPE_7__*,int ) ;
 int CreateRectRgnIndirect (int *) ;
 int DeleteObject (int ) ;
 scalar_t__ ERROR ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int InvalidateRgn (int ,int ,int ) ;
 int PAUSED_FROM_SELECTION ;
 int RGN_XOR ;
 int SmallRectToRect (TYPE_5__*,int *,TYPE_4__*) ;
 void* max (int ,int ) ;
 scalar_t__ memcmp (TYPE_4__*,TYPE_4__*,int) ;
 void* min (int ,int ) ;

__attribute__((used)) static VOID
GuiConsoleUpdateSelection(PCONSOLE Console, PCOORD coord)
{
    PGUI_CONSOLE_DATA GuiData = Console->TermIFace.Data;
    RECT oldRect, newRect;

    SmallRectToRect(GuiData, &oldRect, &Console->Selection.srSelection);

    if (coord != ((void*)0))
    {
        SMALL_RECT rc;

        rc.Left = min(Console->Selection.dwSelectionAnchor.X, coord->X);
        rc.Top = min(Console->Selection.dwSelectionAnchor.Y, coord->Y);
        rc.Right = max(Console->Selection.dwSelectionAnchor.X, coord->X);
        rc.Bottom = max(Console->Selection.dwSelectionAnchor.Y, coord->Y);

        SmallRectToRect(GuiData, &newRect, &rc);

        if (Console->Selection.dwFlags & CONSOLE_SELECTION_NOT_EMPTY)
        {
            if (memcmp(&rc, &Console->Selection.srSelection, sizeof(SMALL_RECT)) != 0)
            {
                HRGN rgn1, rgn2;


                if ((rgn1 = CreateRectRgnIndirect(&oldRect)))
                {
                    if ((rgn2 = CreateRectRgnIndirect(&newRect)))
                    {
                        if (CombineRgn(rgn1, rgn2, rgn1, RGN_XOR) != ERROR)
                        {
                            InvalidateRgn(GuiData->hWindow, rgn1, FALSE);
                        }
                        DeleteObject(rgn2);
                    }
                    DeleteObject(rgn1);
                }
            }
        }
        else
        {
            InvalidateRect(GuiData->hWindow, &newRect, FALSE);
        }
        Console->Selection.dwFlags |= CONSOLE_SELECTION_NOT_EMPTY;
        Console->Selection.srSelection = rc;
        Console->dwSelectionCursor = *coord;
        ConioPause(Console, PAUSED_FROM_SELECTION);
    }
    else
    {

        if (Console->Selection.dwFlags & CONSOLE_SELECTION_NOT_EMPTY)
        {
            InvalidateRect(GuiData->hWindow, &oldRect, FALSE);
        }
        Console->Selection.dwFlags = CONSOLE_NO_SELECTION;
        ConioUnpause(Console, PAUSED_FROM_SELECTION);
    }
}
