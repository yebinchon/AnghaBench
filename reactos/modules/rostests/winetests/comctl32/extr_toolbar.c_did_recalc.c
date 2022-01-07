
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int top; } ;
typedef TYPE_1__ RECT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int BOOL ;


 int SendMessageA (int ,int ,int,int ) ;
 int TB_GETITEMRECT ;
 int ok (int,char*,int) ;

__attribute__((used)) static BOOL did_recalc(HWND hToolbar)
{
    RECT rect;
    SendMessageA(hToolbar, TB_GETITEMRECT, 1, (LPARAM)&rect);
    ok(rect.top == 2 || rect.top == 0, "Unexpected top margin %d in recalc test\n",
        rect.top);
    return (rect.top == 0);
}
