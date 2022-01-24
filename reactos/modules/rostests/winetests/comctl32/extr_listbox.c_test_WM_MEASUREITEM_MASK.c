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
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ ID_LISTBOX ; 
 int LBS_HASSTRINGS ; 
 int LBS_NOTIFY ; 
 int LBS_OWNERDRAWVARIABLE ; 
 int LBS_SORT ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 int /*<<< orphan*/  PARENT_SEQ_INDEX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_LISTBOXA ; 
 int WS_CHILD ; 
 int /*<<< orphan*/  WS_EX_NOPARENTNOTIFY ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  empty_seq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lb_addstring_ownerdraw_parent_seq ; 
 int /*<<< orphan*/  lb_addstring_sort_parent_seq ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sequences ; 
 scalar_t__* strings ; 

__attribute__((used)) static void FUNC8(void)
{
    HWND parent, listbox;
    LRESULT data, ret;

    parent = FUNC4();
    listbox = FUNC3(WS_CHILD | LBS_OWNERDRAWVARIABLE, parent);

    data = FUNC2(listbox, LB_GETITEMDATA, 0, 0);
    FUNC6(data == (LRESULT)strings[0], "data = %08lx, expected %p\n", data, strings[0]);
    FUNC1(parent);

    parent = FUNC4();
    listbox = FUNC3(WS_CHILD | LBS_OWNERDRAWVARIABLE | LBS_HASSTRINGS, parent);

    data = FUNC2(listbox, LB_GETITEMDATA, 0, 0);
    FUNC6(!data, "data = %08lx\n", data);

    /* LBS_HASSTRINGS */
    parent = FUNC4();
    listbox = FUNC0(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, NULL,
                              WS_CHILD | LBS_NOTIFY | LBS_OWNERDRAWVARIABLE | LBS_HASSTRINGS | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, NULL);

    FUNC5(sequences, NUM_MSG_SEQUENCES);

    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    FUNC6(ret == 0, "expected 0, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    FUNC6(ret == 1, "expected 1, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    FUNC6(ret == 2, "expected 2, got %ld\n", ret);

    FUNC7(sequences, PARENT_SEQ_INDEX, lb_addstring_ownerdraw_parent_seq,
        "LB_ADDSTRING (LBS_HASSTRINGS, ownerdraw)", FALSE);
    FUNC1(listbox);

    /* LBS_SORT, no LBS_HASSTRINGS */
    listbox = FUNC0(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, NULL,
                              WS_CHILD | LBS_NOTIFY | LBS_OWNERDRAWVARIABLE | LBS_SORT | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, NULL);

    FUNC5(sequences, NUM_MSG_SEQUENCES);

    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    FUNC6(ret == 0, "expected 0, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    FUNC6(ret == 1, "expected 1, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    FUNC6(ret == 2, "expected 2, got %ld\n", ret);

    FUNC7(sequences, PARENT_SEQ_INDEX, lb_addstring_sort_parent_seq, "LB_ADDSTRING (LBS_SORT)", FALSE);
    FUNC1(listbox);

    /* LBS_HASSTRINGS */
    listbox = FUNC0(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, NULL,
                              WS_CHILD | LBS_NOTIFY | LBS_HASSTRINGS | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, NULL);

    FUNC5(sequences, NUM_MSG_SEQUENCES);

    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    FUNC6(ret == 0, "expected 0, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    FUNC6(ret == 1, "expected 1, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    FUNC6(ret == 2, "expected 2, got %ld\n", ret);

    FUNC7(sequences, PARENT_SEQ_INDEX, empty_seq, "LB_ADDSTRING (LBS_HASSTRINGS)", FALSE);
    FUNC1(listbox);

    /* LBS_HASSTRINGS, LBS_SORT */
    listbox = FUNC0(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, NULL,
                              WS_CHILD | LBS_NOTIFY | LBS_HASSTRINGS | LBS_SORT | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, NULL);

    FUNC5(sequences, NUM_MSG_SEQUENCES);

    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    FUNC6(ret == 0, "expected 0, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    FUNC6(ret == 0, "expected 0, got %ld\n", ret);
    ret = FUNC2(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    FUNC6(ret == 1, "expected 1, got %ld\n", ret);

    FUNC7(sequences, PARENT_SEQ_INDEX, empty_seq, "LB_ADDSTRING (LBS_HASSTRINGS, LBS_SORT)", FALSE);
    FUNC1(listbox);

    FUNC1(parent);
}