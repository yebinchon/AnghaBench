
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int top; } ;
typedef TYPE_1__ RECT ;
typedef int LPARAM ;
typedef int HWND ;


 int GWL_STYLE ;
 int GetWindowLongA (int ,int ) ;
 int SendMessageA (int ,int ,int,int ) ;
 int SetWindowLongA (int ,int ,int) ;
 int TBSTYLE_FLAT ;
 int TB_GETITEMRECT ;
 int ok (int,char*,int) ;
 int rebuild_toolbar_with_buttons (int *) ;

__attribute__((used)) static void prepare_recalc_test(HWND *phToolbar)
{
    RECT rect;
    rebuild_toolbar_with_buttons(phToolbar);
    SetWindowLongA(*phToolbar, GWL_STYLE,
        GetWindowLongA(*phToolbar, GWL_STYLE) | TBSTYLE_FLAT);
    SendMessageA(*phToolbar, TB_GETITEMRECT, 1, (LPARAM)&rect);
    ok(rect.top == 2, "Test will make no sense because initial top is %d instead of 2\n",
        rect.top);
}
