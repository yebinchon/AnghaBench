
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;
typedef scalar_t__ HMENU ;
typedef int DWORD ;


 int BS_NOTIFY ;
 int * CreateWindowExA (int ,int ,char*,int,int ,int ,int,int,int *,scalar_t__,int ,int *) ;
 scalar_t__ ID_BUTTON ;
 int WC_BUTTONA ;
 int WS_CHILD ;
 int button_subclass_proc ;
 int ok (int ,char*,int,int *) ;
 int pSetWindowSubclass (int *,int ,int ,int ) ;

__attribute__((used)) static HWND create_button(DWORD style, HWND parent)
{
    HMENU menuid = 0;
    HWND hwnd;

    if (parent)
    {
        style |= WS_CHILD|BS_NOTIFY;
        menuid = (HMENU)ID_BUTTON;
    }
    hwnd = CreateWindowExA(0, WC_BUTTONA, "test", style, 0, 0, 50, 14, parent, menuid, 0, ((void*)0));
    ok(hwnd != ((void*)0), "failed to create a button, 0x%08x, %p\n", style, parent);
    pSetWindowSubclass(hwnd, button_subclass_proc, 0, 0);
    return hwnd;
}
