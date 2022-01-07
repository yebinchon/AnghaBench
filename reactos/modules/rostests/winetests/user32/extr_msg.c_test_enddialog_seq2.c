
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int member_1; int member_2; int member_0; int member_3; } ;
typedef int WPARAM ;
typedef int LPARAM ;
typedef int HWND ;


 int EndDialog (int ,int ) ;
 int FALSE ;
 int HCBT_ACTIVATE ;
 int HCBT_SETFOCUS ;
 int SWP_HIDEWINDOW ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int WA_INACTIVE ;
 int WM_ACTIVATE ;
 int WM_ENABLE ;
 int WM_KILLFOCUS ;
 int WM_NCACTIVATE ;
 int WM_SETFOCUS ;
 int WM_WINDOWPOSCHANGING ;
 int defwinproc ;
 int flush_sequence () ;
 int hook ;
 int lparam ;
 int ok_sequence (struct message const*,char*,int ) ;
 int optional ;
 int parent ;
 int sent ;
 int wparam ;

__attribute__((used)) static void test_enddialog_seq2(HWND dialog, HWND owner)
{
    const struct message seq[] = {
        { WM_ENABLE, parent|sent },
        { WM_WINDOWPOSCHANGING, sent|wparam, SWP_HIDEWINDOW|SWP_NOACTIVATE|SWP_NOSIZE|SWP_NOMOVE },
        { HCBT_ACTIVATE, hook|wparam, (WPARAM)owner },
        { WM_NCACTIVATE, sent|wparam|lparam, WA_INACTIVE, (LPARAM)owner },
        { WM_ACTIVATE, sent|wparam|lparam, WA_INACTIVE, (LPARAM)owner },
        { WM_WINDOWPOSCHANGING, sent|optional|wparam, SWP_NOACTIVATE|SWP_NOSIZE|SWP_NOMOVE },
        { WM_WINDOWPOSCHANGING, sent|optional|wparam, SWP_NOACTIVATE|SWP_NOSIZE|SWP_NOMOVE },
        { HCBT_SETFOCUS, hook|wparam, (WPARAM)owner },
        { WM_KILLFOCUS, sent|wparam, (WPARAM)owner },
        { WM_SETFOCUS, sent|parent|defwinproc|wparam, (WPARAM)dialog },
        { 0 }
    };

    flush_sequence();
    EndDialog(dialog, 0);
    ok_sequence(seq, "EndDialog2", FALSE);
}
