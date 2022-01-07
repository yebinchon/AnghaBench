
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int bottom; int right; int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;


 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int Rectangle (int ,int ,int ,int ,int ) ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int UpdateWindow (int ) ;

VOID
FloatWindowPaintHueSlider(HWND hHueSlider)
{
    HDC hdc;
    RECT rect;

    InvalidateRect(hHueSlider,
                   ((void*)0),
                   TRUE);
    UpdateWindow(hHueSlider);

    hdc = GetDC(hHueSlider);

    GetClientRect(hHueSlider,
                  &rect);

    Rectangle(hdc,
              rect.left,
              rect.top,
              rect.right,
              rect.bottom);

    ReleaseDC(hHueSlider,
              hdc);

}
