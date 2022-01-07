
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;
typedef int HRGN ;


 int CreateRectRgn (int,int,int,int) ;
 scalar_t__ CreateWindowExA (int ,char*,char*,int ,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int FALSE ;
 int SW_SHOW ;
 int SetWindowRgn (scalar_t__,int ,int ) ;
 int ShowWindow (scalar_t__,int ) ;
 int TRUE ;
 int UpdateWindow (scalar_t__) ;
 int WS_OVERLAPPEDWINDOW ;
 int WmSetWindowRgn ;
 int WmSetWindowRgn_clear ;
 int WmSetWindowRgn_no_redraw ;
 int flush_events () ;
 int flush_sequence () ;
 int ok (int,char*) ;
 int ok_sequence (int ,char*,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_SetWindowRgn(void)
{
    HRGN hrgn;
    HWND hwnd = CreateWindowExA(0, "TestWindowClass", "Test overlapped", WS_OVERLAPPEDWINDOW,
                                100, 100, 200, 200, 0, 0, 0, ((void*)0));
    ok( hwnd != 0, "Failed to create overlapped window\n" );

    ShowWindow( hwnd, SW_SHOW );
    UpdateWindow( hwnd );
    flush_events();
    flush_sequence();

    trace("testing SetWindowRgn\n");
    hrgn = CreateRectRgn( 0, 0, 150, 150 );
    SetWindowRgn( hwnd, hrgn, TRUE );
    ok_sequence( WmSetWindowRgn, "WmSetWindowRgn", FALSE );

    hrgn = CreateRectRgn( 30, 30, 160, 160 );
    SetWindowRgn( hwnd, hrgn, FALSE );
    ok_sequence( WmSetWindowRgn_no_redraw, "WmSetWindowRgn_no_redraw", FALSE );

    hrgn = CreateRectRgn( 0, 0, 180, 180 );
    SetWindowRgn( hwnd, hrgn, TRUE );
    ok_sequence( WmSetWindowRgn, "WmSetWindowRgn2", FALSE );

    SetWindowRgn( hwnd, 0, TRUE );
    ok_sequence( WmSetWindowRgn_clear, "WmSetWindowRgn_clear", FALSE );

    DestroyWindow( hwnd );
}
