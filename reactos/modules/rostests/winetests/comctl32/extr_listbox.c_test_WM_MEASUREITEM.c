
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HMENU ;


 int CreateWindowExA (int ,int ,int *,int,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (int ) ;
 int FALSE ;
 scalar_t__ ID_LISTBOX ;
 int LBS_HASSTRINGS ;
 int LBS_NOTIFY ;
 int LBS_OWNERDRAWVARIABLE ;
 int LBS_SORT ;
 int LB_ADDSTRING ;
 int LB_GETITEMDATA ;
 int NUM_MSG_SEQUENCES ;
 int PARENT_SEQ_INDEX ;
 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 int WC_LISTBOXA ;
 int WS_CHILD ;
 int WS_EX_NOPARENTNOTIFY ;
 int WS_VISIBLE ;
 int create_listbox (int,int ) ;
 int create_parent () ;
 int empty_seq ;
 int flush_sequences (int ,int ) ;
 int lb_addstring_ownerdraw_parent_seq ;
 int lb_addstring_sort_parent_seq ;
 int ok (int,char*,scalar_t__,...) ;
 int ok_sequence (int ,int ,int ,char*,int ) ;
 int sequences ;
 scalar_t__* strings ;

__attribute__((used)) static void test_WM_MEASUREITEM(void)
{
    HWND parent, listbox;
    LRESULT data, ret;

    parent = create_parent();
    listbox = create_listbox(WS_CHILD | LBS_OWNERDRAWVARIABLE, parent);

    data = SendMessageA(listbox, LB_GETITEMDATA, 0, 0);
    ok(data == (LRESULT)strings[0], "data = %08lx, expected %p\n", data, strings[0]);
    DestroyWindow(parent);

    parent = create_parent();
    listbox = create_listbox(WS_CHILD | LBS_OWNERDRAWVARIABLE | LBS_HASSTRINGS, parent);

    data = SendMessageA(listbox, LB_GETITEMDATA, 0, 0);
    ok(!data, "data = %08lx\n", data);


    parent = create_parent();
    listbox = CreateWindowExA(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, ((void*)0),
                              WS_CHILD | LBS_NOTIFY | LBS_OWNERDRAWVARIABLE | LBS_HASSTRINGS | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, ((void*)0));

    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    ok(ret == 0, "expected 0, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    ok(ret == 1, "expected 1, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    ok(ret == 2, "expected 2, got %ld\n", ret);

    ok_sequence(sequences, PARENT_SEQ_INDEX, lb_addstring_ownerdraw_parent_seq,
        "LB_ADDSTRING (LBS_HASSTRINGS, ownerdraw)", FALSE);
    DestroyWindow(listbox);


    listbox = CreateWindowExA(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, ((void*)0),
                              WS_CHILD | LBS_NOTIFY | LBS_OWNERDRAWVARIABLE | LBS_SORT | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, ((void*)0));

    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    ok(ret == 0, "expected 0, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    ok(ret == 1, "expected 1, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    ok(ret == 2, "expected 2, got %ld\n", ret);

    ok_sequence(sequences, PARENT_SEQ_INDEX, lb_addstring_sort_parent_seq, "LB_ADDSTRING (LBS_SORT)", FALSE);
    DestroyWindow(listbox);


    listbox = CreateWindowExA(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, ((void*)0),
                              WS_CHILD | LBS_NOTIFY | LBS_HASSTRINGS | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, ((void*)0));

    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    ok(ret == 0, "expected 0, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    ok(ret == 1, "expected 1, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    ok(ret == 2, "expected 2, got %ld\n", ret);

    ok_sequence(sequences, PARENT_SEQ_INDEX, empty_seq, "LB_ADDSTRING (LBS_HASSTRINGS)", FALSE);
    DestroyWindow(listbox);


    listbox = CreateWindowExA(WS_EX_NOPARENTNOTIFY, WC_LISTBOXA, ((void*)0),
                              WS_CHILD | LBS_NOTIFY | LBS_HASSTRINGS | LBS_SORT | WS_VISIBLE,
                              10, 10, 80, 80, parent, (HMENU)ID_LISTBOX, 0, ((void*)0));

    flush_sequences(sequences, NUM_MSG_SEQUENCES);

    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 2");
    ok(ret == 0, "expected 0, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 0");
    ok(ret == 0, "expected 0, got %ld\n", ret);
    ret = SendMessageA(listbox, LB_ADDSTRING, 0, (LPARAM)"item 1");
    ok(ret == 1, "expected 1, got %ld\n", ret);

    ok_sequence(sequences, PARENT_SEQ_INDEX, empty_seq, "LB_ADDSTRING (LBS_HASSTRINGS, LBS_SORT)", FALSE);
    DestroyWindow(listbox);

    DestroyWindow(parent);
}
