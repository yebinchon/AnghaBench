
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bottom; int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef int LONG ;
typedef int BOOL ;


 int AdjustWindowRectEx (TYPE_1__*,int,int ,int) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int SM_CXVSCROLL ;
 int SM_CYHSCROLL ;
 int WS_EX_LEFTSCROLLBAR ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;

__attribute__((used)) static void FixedAdjustWindowRectEx(RECT* rc, LONG style, BOOL menu, LONG exstyle)
{
    AdjustWindowRectEx(rc, style, menu, exstyle);

    if (style & WS_VSCROLL)
    {
        if(exstyle & WS_EX_LEFTSCROLLBAR)
            rc->left -= GetSystemMetrics(SM_CXVSCROLL);
        else
            rc->right += GetSystemMetrics(SM_CXVSCROLL);
    }
    if (style & WS_HSCROLL)
 rc->bottom += GetSystemMetrics(SM_CYHSCROLL);
}
