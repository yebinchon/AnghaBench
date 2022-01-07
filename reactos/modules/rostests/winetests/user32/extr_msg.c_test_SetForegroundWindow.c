
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 scalar_t__ CreateWindowExA (int ,char*,char*,int,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int FALSE ;
 scalar_t__ GetDesktopWindow () ;
 int SetForegroundWindow (scalar_t__) ;
 int SetForegroundWindowSeq ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int WmEmptySeq ;
 int flush_sequence () ;
 int ok (int,char*) ;
 int ok_sequence (int ,char*,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_SetForegroundWindow(void)
{
    HWND hwnd;

    hwnd = CreateWindowExA(0, "TestWindowClass", "Test SetForegroundWindow",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, ((void*)0));
    ok (hwnd != 0, "Failed to create overlapped window\n");
    SetForegroundWindow( hwnd );
    flush_sequence();

    trace("SetForegroundWindow( 0 )\n");
    SetForegroundWindow( 0 );
    ok_sequence(WmEmptySeq, "SetForegroundWindow( 0 ) away from foreground top level window", FALSE);
    trace("SetForegroundWindow( GetDesktopWindow() )\n");
    SetForegroundWindow( GetDesktopWindow() );
    ok_sequence(SetForegroundWindowSeq, "SetForegroundWindow( desktop ) away from "
                                        "foreground top level window", FALSE);
    trace("done\n");

    DestroyWindow(hwnd);
}
