
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ height; scalar_t__ bottom; scalar_t__ top; scalar_t__ width; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_10__ {int iItemId; } ;
struct TYPE_9__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int LPPOINT ;
typedef TYPE_2__ LAYOUT_INFO ;
typedef TYPE_3__ LAYOUT_DATA ;
typedef int * HWND ;


 int ERR (char*,int) ;
 int GetClientRect (int *,TYPE_1__*) ;
 int * GetDlgItem (int *,int ) ;
 int GetWindowRect (int *,TYPE_1__*) ;
 int HWND_DESKTOP ;
 int MapWindowPoints (int ,int *,int ,int) ;
 TYPE_3__* SHAlloc (int) ;

__attribute__((used)) static LAYOUT_DATA *LayoutInit(HWND hwnd, const LAYOUT_INFO *layout_info, int layout_count)
{
    LAYOUT_DATA *data;
    RECT rcWnd;
    int i;

    GetClientRect(hwnd, &rcWnd);
    data = SHAlloc(sizeof(LAYOUT_DATA)*layout_count);
    for (i = 0; i < layout_count; i++)
    {
        RECT r;
        HWND hItem = GetDlgItem(hwnd, layout_info[i].iItemId);

        if (hItem == ((void*)0))
            ERR("Item %d not found\n", i);
        GetWindowRect(hItem, &r);
        MapWindowPoints(HWND_DESKTOP, hwnd, (LPPOINT)&r, 2);

        data[i].left = r.left;
        data[i].right = rcWnd.right - r.right;
        data[i].width = r.right - r.left;

        data[i].top = r.top;
        data[i].bottom = rcWnd.bottom - r.bottom;
        data[i].height = r.bottom - r.top;
    }
    return data;
}
