
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int left; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int LONG ;
typedef scalar_t__ BOOL ;


 int GetSystemMetrics (int ) ;
 int InflateRect (TYPE_1__*,int,int) ;
 int SM_CXDLGFRAME ;
 int SM_CXEDGE ;
 int SM_CXFRAME ;
 int SM_CXVSCROLL ;
 int SM_CYCAPTION ;
 int SM_CYEDGE ;
 int SM_CYHSCROLL ;
 int SM_CYMENU ;
 int SM_CYSMCAPTION ;
 int WS_BORDER ;
 int WS_CAPTION ;
 int WS_DLGFRAME ;
 int WS_EX_CLIENTEDGE ;
 int WS_EX_DLGMODALFRAME ;
 int WS_EX_LEFTSCROLLBAR ;
 int WS_EX_STATICEDGE ;
 int WS_EX_TOOLWINDOW ;
 int WS_HSCROLL ;
 int WS_THICKFRAME ;
 int WS_VSCROLL ;

__attribute__((used)) static void wine_AdjustWindowRectEx( RECT *rect, LONG style, BOOL menu, LONG exStyle )
{
    int adjust;

    if ((exStyle & (WS_EX_STATICEDGE|WS_EX_DLGMODALFRAME)) ==
        WS_EX_STATICEDGE)
    {
        adjust = 1;
    }
    else
    {
        adjust = 0;
        if ((exStyle & WS_EX_DLGMODALFRAME) ||
            (style & (WS_THICKFRAME|WS_DLGFRAME))) adjust = 2;
    }
    if (style & WS_THICKFRAME)
        adjust += GetSystemMetrics(SM_CXFRAME) - GetSystemMetrics(SM_CXDLGFRAME);
    if ((style & (WS_BORDER|WS_DLGFRAME)) ||
        (exStyle & WS_EX_DLGMODALFRAME))
        adjust++;

    InflateRect (rect, adjust, adjust);

    if ((style & WS_CAPTION) == WS_CAPTION)
    {
        if (exStyle & WS_EX_TOOLWINDOW)
            rect->top -= GetSystemMetrics(SM_CYSMCAPTION);
        else
            rect->top -= GetSystemMetrics(SM_CYCAPTION);
    }
    if (menu) rect->top -= GetSystemMetrics(SM_CYMENU);

    if (exStyle & WS_EX_CLIENTEDGE)
        InflateRect(rect, GetSystemMetrics(SM_CXEDGE), GetSystemMetrics(SM_CYEDGE));

    if (style & WS_VSCROLL)
    {
        if((exStyle & WS_EX_LEFTSCROLLBAR) != 0)
            rect->left -= GetSystemMetrics(SM_CXVSCROLL);
        else
            rect->right += GetSystemMetrics(SM_CXVSCROLL);
    }
    if (style & WS_HSCROLL) rect->bottom += GetSystemMetrics(SM_CYHSCROLL);
}
