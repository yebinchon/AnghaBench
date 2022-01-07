
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 scalar_t__ CreateWindowExA (int ,char*,char*,int,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int DoubleSetCaptureSeq ;
 int FALSE ;
 int SW_SHOW ;
 int SetCapture (scalar_t__) ;
 int ShowWindow (scalar_t__,int ) ;
 int UpdateWindow (scalar_t__) ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int flush_events () ;
 int flush_sequence () ;
 int ok (int,char*) ;
 int ok_sequence (int ,char*,int ) ;

__attribute__((used)) static void test_DoubleSetCapture(void)
{
    HWND hwnd;

    hwnd = CreateWindowExA(0, "TestWindowClass", "Test DoubleSetCapture",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, ((void*)0));
    ok (hwnd != 0, "Failed to create overlapped window\n");

    ShowWindow( hwnd, SW_SHOW );
    UpdateWindow( hwnd );
    flush_events();
    flush_sequence();

    SetCapture( hwnd );
    SetCapture( hwnd );
    ok_sequence(DoubleSetCaptureSeq, "SetCapture( hwnd ) twice", FALSE);

    DestroyWindow(hwnd);
}
