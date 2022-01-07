
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int cxy; scalar_t__ cchTextMax; int pszText; } ;
typedef int LPSTR ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef TYPE_1__ HDITEMA ;


 int HDI_TEXT ;
 int HDI_WIDTH ;
 int HDM_INSERTITEMA ;
 int SendMessageA (int ,int ,int,int ) ;

__attribute__((used)) static LONG addItem(HWND hdex, int idx, LPSTR text)
{
    HDITEMA hdItem;
    hdItem.mask = HDI_TEXT | HDI_WIDTH;
    hdItem.cxy = 100;
    hdItem.pszText = text;
    hdItem.cchTextMax = 0;
    return SendMessageA(hdex, HDM_INSERTITEMA, idx, (LPARAM)&hdItem);
}
