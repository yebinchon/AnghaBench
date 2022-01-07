
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int srSelection; int dwSelectionAnchor; } ;
struct TYPE_9__ {TYPE_1__ Selection; int LineSelection; } ;
struct TYPE_8__ {int hdc; int rcPaint; } ;
typedef TYPE_2__* PPAINTSTRUCT ;
typedef TYPE_3__* PGUI_CONSOLE_DATA ;
typedef int HRGN ;


 int CombineRgn (int ,int ,int ,int ) ;
 int CreateRectRgnIndirect (int *) ;
 int CreateSelectionRgn (TYPE_3__*,int ,int *,int *) ;
 int DeleteObject (int ) ;
 int ERROR ;
 int InvertRgn (int ,int ) ;
 int NULLREGION ;
 int RGN_AND ;

__attribute__((used)) static VOID
PaintSelectionRect(PGUI_CONSOLE_DATA GuiData, PPAINTSTRUCT pps)
{
    HRGN rgnPaint = CreateRectRgnIndirect(&pps->rcPaint);
    HRGN rgnSel = CreateSelectionRgn(GuiData, GuiData->LineSelection,
                                       &GuiData->Selection.dwSelectionAnchor,
                                       &GuiData->Selection.srSelection);



    int ErrorCode = CombineRgn(rgnPaint, rgnPaint, rgnSel, RGN_AND);
    if (ErrorCode != ERROR && ErrorCode != NULLREGION)
    {
        InvertRgn(pps->hdc, rgnPaint);
    }

    DeleteObject(rgnSel);
    DeleteObject(rgnPaint);
}
