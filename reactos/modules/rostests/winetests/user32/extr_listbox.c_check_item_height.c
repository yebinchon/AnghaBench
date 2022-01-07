
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {scalar_t__ tmHeight; } ;
typedef TYPE_1__ TEXTMETRICA ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int HDC ;


 int CreateWindowA (char*,char*,int ,int ,int ,int,int,int *,int *,int *,int ) ;
 int DCX_CACHE ;
 int DestroyWindow (int ) ;
 scalar_t__ GetCurrentObject (int ,int ) ;
 int GetDCEx (int ,int ,int ) ;
 int GetTextMetricsA (int ,TYPE_1__*) ;
 int LBS_OWNERDRAWVARIABLE ;
 int LB_GETITEMHEIGHT ;
 int OBJ_FONT ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SendMessageA (int ,int ,int,int ) ;
 int WM_SETFONT ;
 int create_listbox (int ,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void check_item_height(void)
{
    HWND hLB;
    HDC hdc;
    HFONT font;
    TEXTMETRICA tm;
    INT itemHeight;

    hLB = create_listbox (0, 0);
    ok ((hdc = GetDCEx( hLB, 0, DCX_CACHE )) != 0, "Can't get hdc\n");
    ok ((font = GetCurrentObject(hdc, OBJ_FONT)) != 0, "Can't get the current font\n");
    ok (GetTextMetricsA( hdc, &tm ), "Can't read font metrics\n");
    ReleaseDC( hLB, hdc);

    ok (SendMessageA(hLB, WM_SETFONT, (WPARAM)font, 0) == 0, "Can't set font\n");

    itemHeight = SendMessageA(hLB, LB_GETITEMHEIGHT, 0, 0);
    ok (itemHeight == tm.tmHeight, "Item height wrong, got %d, expecting %d\n", itemHeight, tm.tmHeight);

    DestroyWindow (hLB);

    hLB = CreateWindowA("LISTBOX", "TestList", LBS_OWNERDRAWVARIABLE,
                         0, 0, 100, 100, ((void*)0), ((void*)0), ((void*)0), 0);
    itemHeight = SendMessageA(hLB, LB_GETITEMHEIGHT, 0, 0);
    ok(itemHeight == tm.tmHeight, "itemHeight %d\n", itemHeight);
    itemHeight = SendMessageA(hLB, LB_GETITEMHEIGHT, 5, 0);
    ok(itemHeight == tm.tmHeight, "itemHeight %d\n", itemHeight);
    itemHeight = SendMessageA(hLB, LB_GETITEMHEIGHT, -5, 0);
    ok(itemHeight == tm.tmHeight, "itemHeight %d\n", itemHeight);
    DestroyWindow (hLB);
}
