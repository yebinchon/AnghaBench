
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT_PTR ;
typedef scalar_t__ HWND ;
typedef int HMENU ;
typedef int BOOL ;


 scalar_t__ CreateWindowExA (int ,char*,int *,int ,int,int,int,int,scalar_t__,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int FALSE ;
 int GA_PARENT ;
 int GW_OWNER ;
 scalar_t__ GetCapture () ;
 scalar_t__ GetDesktopWindow () ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 int IsChild (scalar_t__,scalar_t__) ;
 int IsWindow (scalar_t__) ;
 int SetCapture (scalar_t__) ;
 scalar_t__ SetParent (scalar_t__,scalar_t__) ;
 int TRUE ;
 scalar_t__ WND_CHILD_ID ;
 int WS_CHILD ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_POPUP ;
 int assert (int) ;
 int destroy_window_with_children ;
 int flush_sequence () ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,char*,int ) ;
 scalar_t__ pGetAncestor (scalar_t__,int ) ;
 int test_DestroyWindow_flag ;
 int trace (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_DestroyWindow(void)
{
    BOOL ret;
    HWND parent, child1, child2, child3, child4, test;
    UINT_PTR child_id = WND_CHILD_ID + 1;

    parent = CreateWindowExA(0, "TestWindowClass", ((void*)0), WS_OVERLAPPEDWINDOW,
        100, 100, 200, 200, 0, 0, 0, ((void*)0));
    assert(parent != 0);
    child1 = CreateWindowExA(0, "TestWindowClass", ((void*)0), WS_CHILD,
        0, 0, 50, 50, parent, (HMENU)child_id++, 0, ((void*)0));
    assert(child1 != 0);
    child2 = CreateWindowExA(0, "TestWindowClass", ((void*)0), WS_CHILD,
        0, 0, 50, 50, GetDesktopWindow(), (HMENU)child_id++, 0, ((void*)0));
    assert(child2 != 0);
    child3 = CreateWindowExA(0, "TestWindowClass", ((void*)0), WS_CHILD,
        0, 0, 50, 50, child1, (HMENU)child_id++, 0, ((void*)0));
    assert(child3 != 0);
    child4 = CreateWindowExA(0, "TestWindowClass", ((void*)0), WS_POPUP,
        0, 0, 50, 50, parent, 0, 0, ((void*)0));
    assert(child4 != 0);


    test = GetParent(child2);
    ok(test == GetDesktopWindow(), "wrong parent %p\n", test);
    ok(!IsChild(parent, child2), "wrong parent/child %p/%p\n", parent, child2);
    if(pGetAncestor) {
        test = pGetAncestor(child2, GA_PARENT);
        ok(test == GetDesktopWindow(), "wrong parent %p\n", test);
    }
    test = GetWindow(child2, GW_OWNER);
    ok(!test, "wrong owner %p\n", test);

    test = SetParent(child2, parent);
    ok(test == GetDesktopWindow(), "wrong old parent %p\n", test);


    test = GetParent(parent);
    ok(!test, "wrong parent %p\n", test);
    ok(!IsChild(GetDesktopWindow(), parent), "wrong parent/child %p/%p\n", GetDesktopWindow(), parent);
    if(pGetAncestor) {
        test = pGetAncestor(parent, GA_PARENT);
        ok(test == GetDesktopWindow(), "wrong parent %p\n", test);
    }
    test = GetWindow(parent, GW_OWNER);
    ok(!test, "wrong owner %p\n", test);


    test = GetParent(child1);
    ok(test == parent, "wrong parent %p\n", test);
    ok(IsChild(parent, child1), "wrong parent/child %p/%p\n", parent, child1);
    if(pGetAncestor) {
        test = pGetAncestor(child1, GA_PARENT);
        ok(test == parent, "wrong parent %p\n", test);
    }
    test = GetWindow(child1, GW_OWNER);
    ok(!test, "wrong owner %p\n", test);


    test = GetParent(child2);
    ok(test == parent, "wrong parent %p\n", test);
    ok(IsChild(parent, child2), "wrong parent/child %p/%p\n", parent, child2);
    if(pGetAncestor) {
        test = pGetAncestor(child2, GA_PARENT);
        ok(test == parent, "wrong parent %p\n", test);
    }
    test = GetWindow(child2, GW_OWNER);
    ok(!test, "wrong owner %p\n", test);


    test = GetParent(child3);
    ok(test == child1, "wrong parent %p\n", test);
    ok(IsChild(parent, child3), "wrong parent/child %p/%p\n", parent, child3);
    if(pGetAncestor) {
        test = pGetAncestor(child3, GA_PARENT);
        ok(test == child1, "wrong parent %p\n", test);
    }
    test = GetWindow(child3, GW_OWNER);
    ok(!test, "wrong owner %p\n", test);


    test = GetParent(child4);
    ok(test == parent, "wrong parent %p\n", test);
    ok(!IsChild(parent, child4), "wrong parent/child %p/%p\n", parent, child4);
    if(pGetAncestor) {
        test = pGetAncestor(child4, GA_PARENT);
        ok(test == GetDesktopWindow(), "wrong parent %p\n", test);
    }
    test = GetWindow(child4, GW_OWNER);
    ok(test == parent, "wrong owner %p\n", test);

    flush_sequence();

    trace("parent %p, child1 %p, child2 %p, child3 %p, child4 %p\n",
    parent, child1, child2, child3, child4);

    SetCapture(child4);
    test = GetCapture();
    ok(test == child4, "wrong capture window %p\n", test);

    test_DestroyWindow_flag = TRUE;
    ret = DestroyWindow(parent);
    ok( ret, "DestroyWindow() error %d\n", GetLastError());
    test_DestroyWindow_flag = FALSE;
    ok_sequence(destroy_window_with_children, "destroy window with children", FALSE);

    ok(!IsWindow(parent), "parent still exists\n");
    ok(!IsWindow(child1), "child1 still exists\n");
    ok(!IsWindow(child2), "child2 still exists\n");
    ok(!IsWindow(child3), "child3 still exists\n");
    ok(!IsWindow(child4), "child4 still exists\n");

    test = GetCapture();
    ok(!test, "wrong capture window %p\n", test);
}
