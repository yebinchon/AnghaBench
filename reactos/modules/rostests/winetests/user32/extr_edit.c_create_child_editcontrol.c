
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef int * HWND ;
typedef int DWORD ;
typedef int BOOL ;


 int AdjustWindowRect (TYPE_1__*,int,int ) ;
 int CW_USEDEFAULT ;
 int * CreateWindowExA (int,char*,char*,int,int ,int ,int,int,int *,int *,int ,int *) ;
 int FALSE ;
 int SW_SHOW ;
 int SetRect (TYPE_1__*,int ,int ,int,int) ;
 int ShowWindow (int *,int ) ;
 int WS_CHILD ;
 int WS_OVERLAPPEDWINDOW ;
 int assert (int *) ;
 int hinst ;
 int ok (int ,char*) ;
 char* szEditTextPositionClass ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static HWND create_child_editcontrol (DWORD style, DWORD exstyle)
{
    HWND parentWnd;
    HWND editWnd;
    RECT rect;
    BOOL b;
    SetRect(&rect, 0, 0, 300, 300);
    b = AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, FALSE);
    ok(b, "AdjustWindowRect failed\n");

    parentWnd = CreateWindowExA(0,
                            szEditTextPositionClass,
                            "Edit Test",
                            WS_OVERLAPPEDWINDOW,
                            CW_USEDEFAULT, CW_USEDEFAULT,
                            rect.right - rect.left, rect.bottom - rect.top,
                            ((void*)0), ((void*)0), hinst, ((void*)0));
    ok (parentWnd != ((void*)0), "CreateWindow EDIT Test failed\n");
    assert(parentWnd);

    editWnd = CreateWindowExA(exstyle,
                            "EDIT",
                            "Test Text",
                            WS_CHILD | style,
                            0, 0, 300, 300,
                            parentWnd, ((void*)0), hinst, ((void*)0));
    ok (editWnd != ((void*)0), "CreateWindow EDIT Test Text failed\n");
    assert(editWnd);
    if (winetest_interactive)
        ShowWindow (parentWnd, SW_SHOW);
    return editWnd;
}
