
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int LONG ;
typedef int HWND ;
typedef int HINSTANCE ;


 int CreateWindowExA (int ,int ,int *,int,int ,int ,int,int,int ,int ,int ,int *) ;
 int GWLP_HINSTANCE ;
 int GWL_STYLE ;
 int GetParent (int ) ;
 int GetWindowLongPtrA (int ,int ) ;
 int GetWindowLongPtrW (int ,int ) ;
 scalar_t__ ICONTITLE_CLASS_ATOM ;
 int IsWindowEnabled (int ) ;
 int SetWindowLongPtrW (int ,int ,int) ;
 int WIN_SetOwner (int ,int ) ;
 int WS_BORDER ;
 int WS_CAPTION ;
 int WS_CHILD ;
 int WS_CLIPSIBLINGS ;
 int WS_DISABLED ;

HWND ICONTITLE_Create( HWND owner )
{
    HWND hWnd;
    HINSTANCE instance = (HINSTANCE)GetWindowLongPtrA( owner, GWLP_HINSTANCE );
    LONG style = WS_CLIPSIBLINGS;

    if (!IsWindowEnabled(owner)) style |= WS_DISABLED;
    if( GetWindowLongPtrA( owner, GWL_STYLE ) & WS_CHILD )
 hWnd = CreateWindowExA( 0, (LPCSTR)ICONTITLE_CLASS_ATOM, ((void*)0),
                                style | WS_CHILD, 0, 0, 1, 1,
                                GetParent(owner), 0, instance, ((void*)0) );
    else
 hWnd = CreateWindowExA( 0, (LPCSTR)ICONTITLE_CLASS_ATOM, ((void*)0),
                                style, 0, 0, 1, 1,
                                owner, 0, instance, ((void*)0) );
    WIN_SetOwner( hWnd, owner );
    SetWindowLongPtrW( hWnd, GWL_STYLE,
                       GetWindowLongPtrW( hWnd, GWL_STYLE ) & ~(WS_CAPTION | WS_BORDER) );
    return hWnd;
}
