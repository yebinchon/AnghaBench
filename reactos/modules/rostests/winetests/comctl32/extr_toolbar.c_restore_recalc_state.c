
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
 int SendMessageA (int ,int ,int,int ) ;
 int SetWindowLongA (int ,int ,int) ;
 int TBSTYLE_FLAT ;
 int TB_ADDBUTTONSA ;
 int TB_GETITEMRECT ;
 int TB_GETSTYLE ;
 int * buttons3 ;
 int ok (int,char*,int) ;

__attribute__((used)) static void restore_recalc_state(HWND hToolbar)
{
    RECT rect;

    SetWindowLongA(hToolbar, GWL_STYLE,
                   SendMessageA(hToolbar, TB_GETSTYLE, 0, 0) & ~TBSTYLE_FLAT);

    SendMessageA(hToolbar, TB_ADDBUTTONSA, 1, (LPARAM)&buttons3[3]);

    SetWindowLongA(hToolbar, GWL_STYLE,
                   SendMessageA(hToolbar, TB_GETSTYLE, 0, 0) | TBSTYLE_FLAT);

    SendMessageA(hToolbar, TB_GETITEMRECT, 1, (LPARAM)&rect);
    ok(rect.top == 2, "Test will make no sense because initial top is %d instead of 2\n",
        rect.top);
}
