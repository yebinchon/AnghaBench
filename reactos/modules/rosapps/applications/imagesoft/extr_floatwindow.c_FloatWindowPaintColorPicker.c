
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


 int Ellipse (int ,int ,int ,int ,int ) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int UpdateWindow (int ) ;

VOID
FloatWindowPaintColorPicker(HWND hColorPicker)
{
    HDC hdc;
    RECT rect;

    InvalidateRect(hColorPicker,
                   ((void*)0),
                   TRUE);
    UpdateWindow(hColorPicker);

    hdc = GetDC(hColorPicker);

    GetClientRect(hColorPicker,
                  &rect);

    Ellipse(hdc,
            rect.left,
            rect.top,
            rect.right,
            rect.bottom);

    ReleaseDC(hColorPicker,
              hdc);

}
