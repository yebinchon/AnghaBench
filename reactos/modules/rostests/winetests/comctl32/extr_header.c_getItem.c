
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cchTextMax; int pszText; int mask; } ;
typedef int LPSTR ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef TYPE_1__ HDITEMA ;


 int HDI_TEXT ;
 int HDM_GETITEMA ;
 int MAX_CHARS ;
 int SendMessageA (int ,int ,int,int ) ;

__attribute__((used)) static LONG getItem(HWND hdex, int idx, LPSTR textBuffer)
{
    HDITEMA hdItem;
    hdItem.mask = HDI_TEXT;
    hdItem.pszText = textBuffer;
    hdItem.cchTextMax = MAX_CHARS;
    return SendMessageA(hdex, HDM_GETITEMA, idx, (LPARAM)&hdItem);
}
