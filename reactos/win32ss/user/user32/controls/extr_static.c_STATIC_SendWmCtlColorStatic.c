
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBRUSH ;


 scalar_t__ DefWindowProcW (scalar_t__,int ,int ,int ) ;
 scalar_t__ GetControlBrush (scalar_t__,scalar_t__,int ) ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ SendMessageW (scalar_t__,int ,int ,int ) ;
 int WM_CTLCOLORSTATIC ;

__attribute__((used)) static HBRUSH STATIC_SendWmCtlColorStatic(HWND hwnd, HDC hdc)
{



    HBRUSH hBrush;
    HWND parent = GetParent(hwnd);

    if (!parent) parent = hwnd;
    hBrush = (HBRUSH) SendMessageW( parent,
                    WM_CTLCOLORSTATIC, (WPARAM)hdc, (LPARAM)hwnd );
    if (!hBrush)
    {


        hBrush = (HBRUSH)DefWindowProcW( parent, WM_CTLCOLORSTATIC,
                                        (WPARAM)hdc, (LPARAM)hwnd);
    }
    return hBrush;

}
