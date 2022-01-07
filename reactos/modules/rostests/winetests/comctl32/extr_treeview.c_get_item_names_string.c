
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int name ;
struct TYPE_2__ {char* pszText; int cchTextMax; int * hItem; int mask; int member_0; } ;
typedef TYPE_1__ TVITEMA ;
typedef int LPARAM ;
typedef int HWND ;
typedef int * HTREEITEM ;


 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 int TVGN_CHILD ;
 int TVGN_NEXT ;
 int TVGN_ROOT ;
 int TVIF_TEXT ;
 int TVM_GETITEMA ;
 int TVM_GETNEXTITEM ;
 int strcat (char*,char*) ;

__attribute__((used)) static void get_item_names_string(HWND hwnd, HTREEITEM item, char *str)
{
    TVITEMA tvitem = { 0 };
    HTREEITEM child;
    char name[16];

    if (!item)
    {
        item = (HTREEITEM)SendMessageA(hwnd, TVM_GETNEXTITEM, TVGN_ROOT, 0);
        str[0] = 0;
    }

    child = (HTREEITEM)SendMessageA(hwnd, TVM_GETNEXTITEM, TVGN_CHILD, (LPARAM)item);

    tvitem.mask = TVIF_TEXT;
    tvitem.hItem = item;
    tvitem.pszText = name;
    tvitem.cchTextMax = sizeof(name);
    SendMessageA(hwnd, TVM_GETITEMA, 0, (LPARAM)&tvitem);
    strcat(str, tvitem.pszText);

    while (child != ((void*)0))
    {
        get_item_names_string(hwnd, child, str);
        child = (HTREEITEM)SendMessageA(hwnd, TVM_GETNEXTITEM, TVGN_NEXT, (LPARAM)child);
    }
}
