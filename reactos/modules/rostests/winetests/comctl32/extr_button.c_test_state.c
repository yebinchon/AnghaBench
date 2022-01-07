
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int BM_GETSTATE ;
 scalar_t__ BST_UNCHECKED ;
 scalar_t__ BS_DEFCOMMANDLINK ;
 scalar_t__ BS_PUSHBUTTON ;
 int DestroyWindow (int ) ;
 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 int create_button (scalar_t__,int *) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_state(void)
{
    HWND hwnd;
    DWORD type;
    LONG state;


    for (type = BS_PUSHBUTTON; type <= BS_DEFCOMMANDLINK; type++)
    {
        hwnd = create_button(type, ((void*)0));
        state = SendMessageA(hwnd, BM_GETSTATE, 0, 0);
        ok(state == BST_UNCHECKED, "Expect state 0x%08x, got 0x%08x\n", BST_UNCHECKED, state);
        DestroyWindow(hwnd);
    }
}
