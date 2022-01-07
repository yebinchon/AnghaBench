
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int left; int right; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;


 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int InvertRect (int ,TYPE_1__*) ;
 int ReleaseDC (int ,int ) ;
 int SPLIT_WIDTH ;

__attribute__((used)) static void draw_splitbar(HWND hWnd, int x)
{
    RECT rt;
    HDC hdc = GetDC(hWnd);

    GetClientRect(hWnd, &rt);
    rt.left = x - SPLIT_WIDTH/2;
    rt.right = x + SPLIT_WIDTH/2+1;
    InvertRect(hdc, &rt);
    ReleaseDC(hWnd, hdc);
}
