
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cchTextMax; int pszText; int mask; } ;
typedef int LPSTR ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef TYPE_1__ HDITEMA ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int HDI_TEXT ;
 int HDM_SETITEMA ;
 int HDN_ITEMCHANGEDA ;
 int HDN_ITEMCHANGINGA ;
 int SendMessageA (int ,int ,int,int ) ;
 int expect_notify (int ,int ,TYPE_1__*) ;
 int notifies_received () ;
 int ok (int ,char*) ;

__attribute__((used)) static LONG setItem(HWND hdex, int idx, LPSTR text, BOOL fCheckNotifies)
{
    LONG ret;
    HDITEMA hdexItem;
    hdexItem.mask = HDI_TEXT;
    hdexItem.pszText = text;
    hdexItem.cchTextMax = 0;
    if (fCheckNotifies)
    {
        expect_notify(HDN_ITEMCHANGINGA, FALSE, &hdexItem);
        expect_notify(HDN_ITEMCHANGEDA, FALSE, &hdexItem);
    }
    ret = SendMessageA(hdex, HDM_SETITEMA, idx, (LPARAM)&hdexItem);
    if (fCheckNotifies)
        ok(notifies_received(), "setItem(): not all expected notifies were received\n");
    return ret;
}
