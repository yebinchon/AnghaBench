#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT_PTR ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GA_PARENT ; 
 int /*<<< orphan*/  GW_OWNER ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WND_CHILD_ID ; 
 int /*<<< orphan*/  WS_CHILD ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  destroy_window_with_children ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_DestroyWindow_flag ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC17(void)
{
    BOOL ret;
    HWND parent, child1, child2, child3, child4, test;
    UINT_PTR child_id = WND_CHILD_ID + 1;

    parent = FUNC0(0, "TestWindowClass", NULL, WS_OVERLAPPEDWINDOW,
			     100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC11(parent != 0);
    child1 = FUNC0(0, "TestWindowClass", NULL, WS_CHILD,
			     0, 0, 50, 50, parent, (HMENU)child_id++, 0, NULL);
    FUNC11(child1 != 0);
    child2 = FUNC0(0, "TestWindowClass", NULL, WS_CHILD,
			     0, 0, 50, 50, FUNC3(), (HMENU)child_id++, 0, NULL);
    FUNC11(child2 != 0);
    child3 = FUNC0(0, "TestWindowClass", NULL, WS_CHILD,
			     0, 0, 50, 50, child1, (HMENU)child_id++, 0, NULL);
    FUNC11(child3 != 0);
    child4 = FUNC0(0, "TestWindowClass", NULL, WS_POPUP,
			     0, 0, 50, 50, parent, 0, 0, NULL);
    FUNC11(child4 != 0);

    /* test owner/parent of child2 */
    test = FUNC5(child2);
    FUNC13(test == FUNC3(), "wrong parent %p\n", test);
    FUNC13(!FUNC7(parent, child2), "wrong parent/child %p/%p\n", parent, child2);
    if(&pGetAncestor) {
        test = FUNC15(child2, GA_PARENT);
        FUNC13(test == FUNC3(), "wrong parent %p\n", test);
    }
    test = FUNC6(child2, GW_OWNER);
    FUNC13(!test, "wrong owner %p\n", test);

    test = FUNC10(child2, parent);
    FUNC13(test == FUNC3(), "wrong old parent %p\n", test);

    /* test owner/parent of the parent */
    test = FUNC5(parent);
    FUNC13(!test, "wrong parent %p\n", test);
    FUNC13(!FUNC7(FUNC3(), parent), "wrong parent/child %p/%p\n", FUNC3(), parent);
    if(&pGetAncestor) {
        test = FUNC15(parent, GA_PARENT);
        FUNC13(test == FUNC3(), "wrong parent %p\n", test);
    }
    test = FUNC6(parent, GW_OWNER);
    FUNC13(!test, "wrong owner %p\n", test);

    /* test owner/parent of child1 */
    test = FUNC5(child1);
    FUNC13(test == parent, "wrong parent %p\n", test);
    FUNC13(FUNC7(parent, child1), "wrong parent/child %p/%p\n", parent, child1);
    if(&pGetAncestor) {
        test = FUNC15(child1, GA_PARENT);
        FUNC13(test == parent, "wrong parent %p\n", test);
    }
    test = FUNC6(child1, GW_OWNER);
    FUNC13(!test, "wrong owner %p\n", test);

    /* test owner/parent of child2 */
    test = FUNC5(child2);
    FUNC13(test == parent, "wrong parent %p\n", test);
    FUNC13(FUNC7(parent, child2), "wrong parent/child %p/%p\n", parent, child2);
    if(&pGetAncestor) {
        test = FUNC15(child2, GA_PARENT);
        FUNC13(test == parent, "wrong parent %p\n", test);
    }
    test = FUNC6(child2, GW_OWNER);
    FUNC13(!test, "wrong owner %p\n", test);

    /* test owner/parent of child3 */
    test = FUNC5(child3);
    FUNC13(test == child1, "wrong parent %p\n", test);
    FUNC13(FUNC7(parent, child3), "wrong parent/child %p/%p\n", parent, child3);
    if(&pGetAncestor) {
        test = FUNC15(child3, GA_PARENT);
        FUNC13(test == child1, "wrong parent %p\n", test);
    }
    test = FUNC6(child3, GW_OWNER);
    FUNC13(!test, "wrong owner %p\n", test);

    /* test owner/parent of child4 */
    test = FUNC5(child4);
    FUNC13(test == parent, "wrong parent %p\n", test);
    FUNC13(!FUNC7(parent, child4), "wrong parent/child %p/%p\n", parent, child4);
    if(&pGetAncestor) {
        test = FUNC15(child4, GA_PARENT);
        FUNC13(test == FUNC3(), "wrong parent %p\n", test);
    }
    test = FUNC6(child4, GW_OWNER);
    FUNC13(test == parent, "wrong owner %p\n", test);

    FUNC12();

    FUNC16("parent %p, child1 %p, child2 %p, child3 %p, child4 %p\n",
	   parent, child1, child2, child3, child4);

    FUNC9(child4);
    test = FUNC2();
    FUNC13(test == child4, "wrong capture window %p\n", test);

    test_DestroyWindow_flag = TRUE;
    ret = FUNC1(parent);
    FUNC13( ret, "DestroyWindow() error %d\n", FUNC4());
    test_DestroyWindow_flag = FALSE;
    FUNC14(destroy_window_with_children, "destroy window with children", FALSE);

    FUNC13(!FUNC8(parent), "parent still exists\n");
    FUNC13(!FUNC8(child1), "child1 still exists\n");
    FUNC13(!FUNC8(child2), "child2 still exists\n");
    FUNC13(!FUNC8(child3), "child3 still exists\n");
    FUNC13(!FUNC8(child4), "child4 still exists\n");

    test = FUNC2();
    FUNC13(!test, "wrong capture window %p\n", test);
}