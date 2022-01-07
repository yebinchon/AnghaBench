
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int LPPOINT ;
typedef int HWND ;


 int GetParent (int ) ;
 int GetWindowRect (int ,int *) ;
 int InvalidateRect (int ,int *,int ) ;
 int MapWindowPoints (int *,int ,int ,int) ;
 int TRUE ;

__attribute__((used)) static void msi_text_on_settext( HWND hWnd )
{
    HWND hParent;
    RECT rc;

    hParent = GetParent( hWnd );
    GetWindowRect( hWnd, &rc );
    MapWindowPoints( ((void*)0), hParent, (LPPOINT) &rc, 2 );
    InvalidateRect( hParent, &rc, TRUE );
}
