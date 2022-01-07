
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_6__ {scalar_t__ dxyLineButton; TYPE_2__ rcScrollBar; } ;
typedef TYPE_1__ SCROLLBARINFO ;
typedef TYPE_2__ RECT ;
typedef int PDRAW_CONTEXT ;
typedef scalar_t__ BOOL ;


 int ABS_DOWNNORMAL ;
 int ABS_LEFTNORMAL ;
 int ABS_RIGHTNORMAL ;
 int ABS_UPNORMAL ;
 int SBP_ARROWBTN ;
 int SCROLL_BOTTOM_ARROW ;
 int SCROLL_TOP_ARROW ;
 int SCROLL_ThemeDrawPart (int ,int ,int,TYPE_1__*,int ,int,int,TYPE_2__*) ;

__attribute__((used)) static void SCROLL_DrawArrows( PDRAW_CONTEXT pcontext, SCROLLBARINFO* psbi,
                               BOOL vertical, int htDown, int htHot )
{
    RECT r;
    int iStateId;

    r = psbi->rcScrollBar;
    if( vertical )
    {
        r.bottom = r.top + psbi->dxyLineButton;
        iStateId = ABS_UPNORMAL;
    }
    else
    {
        r.right = r.left + psbi->dxyLineButton;
        iStateId = ABS_LEFTNORMAL;
    }

    SCROLL_ThemeDrawPart(pcontext, SBP_ARROWBTN, iStateId, psbi, SCROLL_TOP_ARROW, htDown, htHot, &r);

    r = psbi->rcScrollBar;
    if( vertical )
    {
        r.top = r.bottom - psbi->dxyLineButton;
        iStateId = ABS_DOWNNORMAL;
    }
    else
    {
        iStateId = ABS_RIGHTNORMAL;
        r.left = r.right - psbi->dxyLineButton;
    }

    SCROLL_ThemeDrawPart(pcontext, SBP_ARROWBTN, iStateId, psbi, SCROLL_BOTTOM_ARROW, htDown, htHot, &r);
}
