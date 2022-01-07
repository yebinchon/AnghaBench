
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cbexItem ;
struct TYPE_3__ {int iItem; char* pszText; scalar_t__ cchTextMax; int mask; } ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef TYPE_1__ COMBOBOXEXITEMA ;


 int CBEIF_TEXT ;
 int CBEM_SETITEMA ;
 int SendMessageA (int ,int ,int ,int ) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static LONG setItem(HWND cbex, int idx, const char *text) {
    COMBOBOXEXITEMA cbexItem;
    memset(&cbexItem, 0x00, sizeof(cbexItem));
    cbexItem.mask = CBEIF_TEXT;
    cbexItem.iItem = idx;
    cbexItem.pszText = (char*)text;
    cbexItem.cchTextMax = 0;
    return SendMessageA(cbex, CBEM_SETITEMA, 0, (LPARAM)&cbexItem);
}
