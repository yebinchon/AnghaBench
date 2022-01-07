
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int HWND ;


 int GetWindowRect (int ,TYPE_1__*) ;

__attribute__((used)) static void ScreenToWindow( HWND hWnd, POINT* pt)
{
    RECT rcWnd;
    GetWindowRect(hWnd, &rcWnd);
    pt->x -= rcWnd.left;
    pt->y -= rcWnd.top;
}
