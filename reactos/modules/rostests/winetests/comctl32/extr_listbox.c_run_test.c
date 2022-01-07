
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct message {int member_1; int const member_0; int member_3; int member_2; } ;
struct listbox_test {int dummy; } ;
struct listbox_stat {int dummy; } ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_2__ {scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_1__ RECT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;
typedef int CHAR ;


 int CP_ACP ;
 int DestroyWindow (int ) ;
 int FALSE ;
 int LBS_NODATA ;

 int LB_ERR ;
 int const LB_GETCOUNT ;
 int const LB_GETITEMRECT ;
 int const LB_GETTEXT ;
 int const LB_GETTEXTLEN ;

 int const LB_SELITEMRANGE ;
 int LB_SEQ_INDEX ;
 int MAKELPARAM (int,int) ;
 int SendMessageA (int ,int const,int,int ) ;
 int SendMessageW (int ,int const,int,int ) ;
 int TRUE ;
 int VK_DOWN ;
 int WideCharToMultiByte (int ,int ,int *,int,int *,int,int *,int *) ;
 int buttonpress (int ,int ,int ) ;
 int click ;
 int create_listbox (int,int ) ;

 int flush_sequence (int ,int ) ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int init ;
 int keypress (int ,int ,int,int) ;
 int listbox_ok (struct listbox_test const,int ,struct listbox_stat) ;
 int listbox_query (int ,struct listbox_stat*) ;

 int ok (int,char*,...) ;
 int ok_sequence (int ,int ,struct message const*,char*,int ) ;
 int sel ;

 int sequences ;
 int step ;
 int strcmp (int *,int ) ;
 int * strings ;


__attribute__((used)) static void run_test(DWORD style, const struct listbox_test test)
{
    static const struct message delete_seq[] =
    {
        { 133, 129|128|130, 0, 0 },
        { 133, 129|128|130, 0, 0 },
        { 133, 129|128|130, 0, 0 },
        { 133, 129|128|130, 0, 0 },
        { 132, 129|128|130|131, 0, 0 },
        { 0 }
    };
    struct listbox_stat answer;
    int i, res, count;
    RECT second_item;
    HWND hLB;

    hLB = create_listbox (style, 0);

    listbox_query (hLB, &answer);
    listbox_ok (test, init, answer);

    SendMessageA(hLB, LB_GETITEMRECT, 1, (LPARAM) &second_item);
    buttonpress(hLB, (WORD)second_item.left, (WORD)second_item.top);

    listbox_query(hLB, &answer);
    listbox_ok(test, click, answer);

    keypress(hLB, VK_DOWN, 0x50, TRUE);

    listbox_query(hLB, &answer);
    listbox_ok(test, step, answer);

    DestroyWindow(hLB);

    hLB = create_listbox(style, 0);

    SendMessageA(hLB, LB_SELITEMRANGE, TRUE, MAKELPARAM(1, 2));
    listbox_query(hLB, &answer);
    listbox_ok(test, sel, answer);

    for (i = 0; i < 4 && !(style & LBS_NODATA); i++)
    {
        DWORD size = SendMessageA(hLB, LB_GETTEXTLEN, i, 0);
        int resA, resW;
        WCHAR *txtw;
        CHAR *txt;

        txt = heap_alloc_zero(size + 1);
        resA = SendMessageA(hLB, LB_GETTEXT, i, (LPARAM)txt);
        ok(!strcmp(txt, strings[i]), "returned string for item %d does not match %s vs %s\n", i, txt, strings[i]);

        txtw = heap_alloc_zero((size + 1) * sizeof(*txtw));
        resW = SendMessageW(hLB, LB_GETTEXT, i, (LPARAM)txtw);
        ok(resA == resW, "Unexpected text length.\n");
        WideCharToMultiByte(CP_ACP, 0, txtw, -1, txt, size, ((void*)0), ((void*)0));
        ok(!strcmp (txt, strings[i]), "Unexpected string for item %d, %s vs %s.\n", i, txt, strings[i]);

        heap_free(txtw);
        heap_free(txt);
    }


    res = SendMessageA(hLB, LB_GETCOUNT, 0, 0);
    ok(res == 4, "Expected 4 items, got %d\n", res);
    res = SendMessageA(hLB, 133, -1, 0);
    ok(res == LB_ERR, "Expected LB_ERR items, got %d\n", res);
    res = SendMessageA(hLB, 133, 4, 0);
    ok(res == LB_ERR, "Expected LB_ERR items, got %d\n", res);
    count = SendMessageA(hLB, LB_GETCOUNT, 0, 0);
    ok(count == 4, "Unexpected item count %d.\n", count);


    flush_sequence(sequences, LB_SEQ_INDEX);
    for (i = count; i--;)
    {
        res = SendMessageA(hLB, 133, 0, 0);
        ok(res == i, "Unexpected return value %d.\n", res);
    }
    ok_sequence(sequences, LB_SEQ_INDEX, delete_seq, "Emptying listbox", FALSE);

    DestroyWindow(hLB);
}
