
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ DWORD ;


 int CreateWindowA (int ,int *,int,int ,int ,int,int,int *,int *,int ,int *) ;
 int DestroyWindow (int ) ;
 scalar_t__ ECO_AUTOVSCROLL ;
 int EM_GETOPTIONS ;
 int RICHEDIT_CLASS10A ;
 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 int WS_HSCROLL ;
 int WS_POPUP ;
 int WS_VSCROLL ;
 scalar_t__ broken (int) ;
 int hmoduleRichEdit ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_EM_GETOPTIONS(void)
{
    HWND hwnd;
    DWORD options;

    hwnd = CreateWindowA(RICHEDIT_CLASS10A, ((void*)0),
                        WS_POPUP,
                        0, 0, 200, 60, ((void*)0), ((void*)0), hmoduleRichEdit, ((void*)0));
    options = SendMessageA(hwnd, EM_GETOPTIONS, 0, 0);
    ok(options == 0, "Incorrect options %x\n", options);
    DestroyWindow(hwnd);

    hwnd = CreateWindowA(RICHEDIT_CLASS10A, ((void*)0),
                        WS_POPUP|WS_VSCROLL|WS_HSCROLL,
                        0, 0, 200, 60, ((void*)0), ((void*)0), hmoduleRichEdit, ((void*)0));
    options = SendMessageA(hwnd, EM_GETOPTIONS, 0, 0);
    ok(options == ECO_AUTOVSCROLL ||
       broken(options == 0),
       "Incorrect initial options %x\n", options);
    DestroyWindow(hwnd);
}
