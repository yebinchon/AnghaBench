
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int right; int left; int top; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef TYPE_1__* LPRECT ;
typedef scalar_t__ BOOL ;


 scalar_t__ PtInRect (TYPE_1__*,int ) ;

__attribute__((used)) static BOOL SCROLL_PtInRectEx( LPRECT lpRect, POINT pt, BOOL vertical )
{
    RECT rect = *lpRect;
    int scrollbarWidth;



    if (vertical)
    {
        scrollbarWidth = lpRect->right - lpRect->left;
        rect.left -= scrollbarWidth*8;
        rect.right += scrollbarWidth*8;
        rect.top -= scrollbarWidth*2;
        rect.bottom += scrollbarWidth*2;
    }
    else
    {
        scrollbarWidth = lpRect->bottom - lpRect->top;
        rect.left -= scrollbarWidth*2;
        rect.right += scrollbarWidth*2;
        rect.top -= scrollbarWidth*8;
        rect.bottom += scrollbarWidth*8;
    }
    return PtInRect( &rect, pt );
}
