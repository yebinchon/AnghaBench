
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int PAINTSTRUCT ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int GetClipBox (int ,TYPE_1__*) ;
 int SW_ERASE ;
 int SW_INVALIDATE ;
 int ScrollWindow (int ,int,int,int *,TYPE_1__*) ;
 int ScrollWindowEx (int ,int,int,int *,TYPE_1__*,int ,int *,int) ;
 int SetRect (TYPE_1__*,int,int,int,int) ;
 int SetRectEmpty (TYPE_1__*) ;
 int SetViewportExtEx (int ,int,int,int *) ;
 int SetViewportOrgEx (int ,int,int,int *) ;
 int UpdateWindow (int ) ;
 int hwnd_owndc ;
 int ok (int,char*,int ) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void test_scroll_window(void)
{
    PAINTSTRUCT ps;
    HDC hdc;
    RECT clip, rect;



    UpdateWindow( hwnd_owndc );
    SetRect( &clip, 25, 25, 50, 50 );
    ScrollWindow( hwnd_owndc, -5, -10, ((void*)0), &clip );
    hdc = BeginPaint( hwnd_owndc, &ps );
    SetRectEmpty( &rect );
    GetClipBox( hdc, &rect );
    ok( rect.left >= 25 && rect.top >= 25 && rect.right <= 50 && rect.bottom <= 50,
        "invalid clip box %s\n", wine_dbgstr_rect( &rect ));
    EndPaint( hwnd_owndc, &ps );

    SetViewportExtEx( hdc, 2, 3, ((void*)0) );
    SetViewportOrgEx( hdc, 30, 20, ((void*)0) );

    ScrollWindow( hwnd_owndc, -5, -10, ((void*)0), &clip );
    hdc = BeginPaint( hwnd_owndc, &ps );
    SetRectEmpty( &rect );
    GetClipBox( hdc, &rect );
    ok( rect.left >= 25 && rect.top >= 25 && rect.right <= 50 && rect.bottom <= 50,
        "invalid clip box %s\n", wine_dbgstr_rect( &rect ));
    EndPaint( hwnd_owndc, &ps );

    ScrollWindowEx( hwnd_owndc, -5, -10, ((void*)0), &clip, 0, ((void*)0), SW_INVALIDATE | SW_ERASE );
    hdc = BeginPaint( hwnd_owndc, &ps );
    SetRectEmpty( &rect );
    GetClipBox( hdc, &rect );
    ok( rect.left >= -5 && rect.top >= 5 && rect.right <= 20 && rect.bottom <= 30,
        "invalid clip box %s\n", wine_dbgstr_rect( &rect ));
    EndPaint( hwnd_owndc, &ps );

    SetViewportExtEx( hdc, 1, 1, ((void*)0) );
    SetViewportOrgEx( hdc, 0, 0, ((void*)0) );

    ScrollWindowEx( hwnd_owndc, -5, -10, ((void*)0), &clip, 0, ((void*)0), SW_INVALIDATE | SW_ERASE );
    hdc = BeginPaint( hwnd_owndc, &ps );
    SetRectEmpty( &rect );
    GetClipBox( hdc, &rect );
    ok( rect.left >= 25 && rect.top >= 25 && rect.right <= 50 && rect.bottom <= 50,
        "invalid clip box %s\n", wine_dbgstr_rect( &rect ));
    EndPaint( hwnd_owndc, &ps );
}
