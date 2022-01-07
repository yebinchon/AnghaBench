
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 scalar_t__ CreateWindowExA (int ,char*,char*,int ,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int SendMessageCallbackA (scalar_t__,int ,int ,int ,int *,int ) ;
 int WM_NULL ;
 int WS_OVERLAPPEDWINDOW ;
 int flush_events () ;
 int ok (int,char*) ;

__attribute__((used)) static void test_nullCallback(void)
{
    HWND hwnd;

    hwnd = CreateWindowExA(0, "TestWindowClass", "Test overlapped", WS_OVERLAPPEDWINDOW,
                           100, 100, 200, 200, 0, 0, 0, ((void*)0));
    ok (hwnd != 0, "Failed to create overlapped window\n");

    SendMessageCallbackA(hwnd,WM_NULL,0,0,((void*)0),0);
    flush_events();
    DestroyWindow(hwnd);
}
