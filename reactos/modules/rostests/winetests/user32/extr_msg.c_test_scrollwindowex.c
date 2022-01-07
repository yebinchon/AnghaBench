
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int member_3; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ HWND ;


 scalar_t__ CreateWindowExA (int ,char*,char*,int,int,int,int,int,scalar_t__,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int FALSE ;
 int SW_ERASE ;
 int SW_INVALIDATE ;
 int SW_SCROLLCHILDREN ;
 int ScrollWindow (scalar_t__,int,int,int *,int *) ;
 int ScrollWindowEx (scalar_t__,int,int,TYPE_1__*,int *,int *,int *,int) ;
 int ScrollWindowPaint1 ;
 int ScrollWindowPaint2 ;
 int TRUE ;
 int UpdateWindow (scalar_t__) ;
 int WS_CAPTION ;
 int WS_CHILD ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int WmEmptySeq ;
 int flush_events () ;
 int flush_sequence () ;
 int ok (int,char*) ;
 int ok_sequence (int ,char*,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_scrollwindowex(void)
{
    HWND hwnd, hchild;
    RECT rect={0,0,130,130};

    hwnd = CreateWindowExA(0, "TestWindowClass", "Test Scroll",
            WS_VISIBLE|WS_OVERLAPPEDWINDOW,
            100, 100, 200, 200, 0, 0, 0, ((void*)0));
    ok (hwnd != 0, "Failed to create overlapped window\n");
    hchild = CreateWindowExA(0, "TestWindowClass", "Test child",
            WS_VISIBLE|WS_CAPTION|WS_CHILD,
            10, 10, 150, 150, hwnd, 0, 0, ((void*)0));
    ok (hchild != 0, "Failed to create child\n");
    UpdateWindow(hwnd);
    flush_events();
    flush_sequence();


    trace("start scroll\n");
    ScrollWindowEx( hwnd, 10, 10, &rect, ((void*)0), ((void*)0), ((void*)0),
            SW_ERASE|SW_INVALIDATE);
    ok_sequence(WmEmptySeq, "ScrollWindowEx", FALSE);
    trace("end scroll\n");
    flush_sequence();
    flush_events();
    ok_sequence(ScrollWindowPaint1, "ScrollWindowEx", FALSE);
    flush_events();
    flush_sequence();


    trace("start scroll\n");
    ScrollWindowEx( hwnd, 10, 10, &rect, ((void*)0), ((void*)0), ((void*)0), SW_INVALIDATE);
    ok_sequence(WmEmptySeq, "ScrollWindowEx", FALSE);
    trace("end scroll\n");
    flush_sequence();
    flush_events();
    ok_sequence(ScrollWindowPaint2, "ScrollWindowEx", FALSE);
    flush_events();
    flush_sequence();


    trace("start scroll\n");
    ScrollWindowEx( hwnd, 10, 10, &rect, ((void*)0), ((void*)0), ((void*)0),
            SW_SCROLLCHILDREN|SW_ERASE|SW_INVALIDATE);


    ok_sequence(WmEmptySeq, "ScrollWindowEx", TRUE);
    trace("end scroll\n");
    flush_sequence();
    flush_events();
    ok_sequence(ScrollWindowPaint1, "ScrollWindowEx", FALSE);
    flush_events();
    flush_sequence();


    trace("start scroll with ScrollWindow\n");
    ScrollWindow( hwnd, 5, 5, ((void*)0), ((void*)0));
    trace("end scroll\n");
    flush_sequence();
    flush_events();
    ok_sequence(ScrollWindowPaint1, "ScrollWindow", FALSE);

    ok(DestroyWindow(hchild), "failed to destroy window\n");
    ok(DestroyWindow(hwnd), "failed to destroy window\n");
    flush_sequence();
}
