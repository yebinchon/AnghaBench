
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hdc; } ;
typedef int RECT ;
typedef TYPE_1__ PAINTSTRUCT ;
typedef int HWND ;
typedef int ChildWnd ;


 int BLACK_BRUSH ;
 int BeginPaint (int ,TYPE_1__*) ;
 int EndPaint (int ,TYPE_1__*) ;
 int FillRect (int ,int *,int ) ;
 int GetClientRect (int ,int *) ;
 int GetStockObject (int ) ;

__attribute__((used)) static void OnPaint(HWND hWnd, ChildWnd* pChildWnd)
{
    PAINTSTRUCT ps;
    RECT rt;
    GetClientRect(hWnd, &rt);
    BeginPaint(hWnd, &ps);





    FillRect(ps.hdc, &rt, GetStockObject(BLACK_BRUSH));
    EndPaint(hWnd, &ps);
}
