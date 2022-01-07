
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int LPARAM ;
typedef int * HWND ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int BCM_GETTEXTMARGIN ;
 int BCM_SETTEXTMARGIN ;
 scalar_t__ BS_DEFCOMMANDLINK ;
 scalar_t__ BS_PUSHBUTTON ;
 int DestroyWindow (int *) ;
 int EqualRect (int *,int *) ;
 int IsRectEmpty (int *) ;
 int SendMessageA (int *,int ,int ,int ) ;
 int SetRect (int *,int,int,int,int) ;
 int SetRectEmpty (int *) ;
 int * create_button (scalar_t__,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_get_set_textmargin(void)
{
    HWND hwnd;
    RECT margin_in;
    RECT margin_out;
    BOOL ret;
    DWORD type;

    SetRect(&margin_in, 2, 1, 3, 4);
    for (type = BS_PUSHBUTTON; type <= BS_DEFCOMMANDLINK; type++)
    {
        hwnd = create_button(type, ((void*)0));
        ok(hwnd != ((void*)0), "Expect hwnd not null\n");


        ret = SendMessageA(hwnd, BCM_GETTEXTMARGIN, 0, (LPARAM)&margin_out);
        ok(ret, "Expect ret to be true\n");
        ok(IsRectEmpty(&margin_out), "Expect margin empty\n");


        ret = SendMessageA(hwnd, BCM_SETTEXTMARGIN, 0, (LPARAM)&margin_in);
        ok(ret, "Expect ret to be true\n");
        SetRectEmpty(&margin_out);
        ret = SendMessageA(hwnd, BCM_GETTEXTMARGIN, 0, (LPARAM)&margin_out);
        ok(ret, "Expect ret to be true\n");
        ok(EqualRect(&margin_in, &margin_out), "Expect margins to be equal\n");


        ret = SendMessageA(hwnd, BCM_SETTEXTMARGIN, 0, 0);
        ok(!ret, "Expect ret to be false\n");
        SetRectEmpty(&margin_out);
        ret = SendMessageA(hwnd, BCM_GETTEXTMARGIN, 0, (LPARAM)&margin_out);
        ok(ret, "Expect ret to be true\n");
        ok(EqualRect(&margin_in, &margin_out), "Expect margins to be equal\n");


        ret = SendMessageA(hwnd, BCM_SETTEXTMARGIN, 0, (LPARAM)&margin_in);
        ok(ret, "Expect ret to be true\n");
        ret = SendMessageA(hwnd, BCM_GETTEXTMARGIN, 0, 0);
        ok(!ret, "Expect ret to be true\n");

        DestroyWindow(hwnd);
    }
}
