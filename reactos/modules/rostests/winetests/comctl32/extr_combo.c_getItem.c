
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iItem; int cchTextMax; int pszText; int mask; } ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef TYPE_1__ COMBOBOXEXITEMA ;


 int CBEIF_TEXT ;
 int CBEM_GETITEMA ;
 int SendMessageA (int ,int ,int ,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int textBuffer ;

__attribute__((used)) static LONG getItem(HWND cbex, int idx, COMBOBOXEXITEMA *cbItem) {
    memset(cbItem, 0x00, sizeof(COMBOBOXEXITEMA));
    cbItem->mask = CBEIF_TEXT;
    cbItem->pszText = textBuffer;
    cbItem->iItem = idx;
    cbItem->cchTextMax = 100;
    return SendMessageA(cbex, CBEM_GETITEMA, 0, (LPARAM)cbItem);
}
