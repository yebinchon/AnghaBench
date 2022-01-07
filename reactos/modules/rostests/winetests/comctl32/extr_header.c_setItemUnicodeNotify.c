
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cchTextMax; int pszText; void* mask; } ;
struct TYPE_4__ {int pszText; void* mask; } ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef TYPE_1__ HDITEMW ;
typedef TYPE_2__ HDITEMA ;


 void* HDI_TEXT ;
 int HDM_SETITEMA ;
 int HDN_ITEMCHANGEDW ;
 int HDN_ITEMCHANGINGW ;
 int SendMessageA (int ,int ,int,int ) ;
 int TRUE ;
 int expect_notify (int ,int ,TYPE_2__*) ;
 int notifies_received () ;
 int ok (int ,char*) ;

__attribute__((used)) static LONG setItemUnicodeNotify(HWND hdex, int idx, LPSTR text, LPWSTR wText)
{
    LONG ret;
    HDITEMA hdexItem;
    HDITEMW hdexNotify;
    hdexItem.mask = HDI_TEXT;
    hdexItem.pszText = text;
    hdexItem.cchTextMax = 0;

    hdexNotify.mask = HDI_TEXT;
    hdexNotify.pszText = wText;

    expect_notify(HDN_ITEMCHANGINGW, TRUE, (HDITEMA*)&hdexNotify);
    expect_notify(HDN_ITEMCHANGEDW, TRUE, (HDITEMA*)&hdexNotify);
    ret = SendMessageA(hdex, HDM_SETITEMA, idx, (LPARAM)&hdexItem);
    ok(notifies_received(), "setItemUnicodeNotify(): not all expected notifies were received\n");
    return ret;
}
