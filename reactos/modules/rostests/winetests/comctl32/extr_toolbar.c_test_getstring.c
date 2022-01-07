
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strW ;
typedef int str ;
typedef char WCHAR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int * HWND ;
typedef int HMENU ;


 int * CreateWindowExA (int ,int ,int *,int,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int DestroyWindow (int *) ;
 int GetModuleHandleA (int *) ;
 int MAKEWPARAM (int,int ) ;
 scalar_t__ SendMessageA (int *,int ,int ,int ) ;
 scalar_t__ SendMessageW (int *,int ,int ,int ) ;
 int TB_ADDSTRINGA ;
 int TB_GETSTRINGA ;
 int TB_GETSTRINGW ;
 int TOOLBARCLASSNAMEA ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int expect (int,scalar_t__) ;
 int hMainWnd ;
 scalar_t__ lstrcmpA (char const*,char*) ;
 scalar_t__ lstrcmpW (char const*,char*) ;
 int lstrlenA (char const*) ;
 int ok (int ,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_getstring(void)
{
    HWND hToolbar = ((void*)0);
    char str[10];
    WCHAR strW[10];
    static const char answer[] = "STR";
    static const WCHAR answerW[] = { 'S','T','R',0 };
    INT r;

    hToolbar = CreateWindowExA(0, TOOLBARCLASSNAMEA, ((void*)0), WS_CHILD | WS_VISIBLE, 0, 0, 0, 0, hMainWnd, (HMENU)5, GetModuleHandleA(((void*)0)), ((void*)0));
    ok(hToolbar != ((void*)0), "Toolbar creation problem\n");

    r = SendMessageA(hToolbar, TB_GETSTRINGA, MAKEWPARAM(0, 0), 0);
    if (r == 0)
    {
        win_skip("TB_GETSTRINGA and TB_GETSTRINGW need 5.80\n");
        DestroyWindow(hToolbar);
        return;
    }
    expect(-1, r);
    r = SendMessageW(hToolbar, TB_GETSTRINGW, MAKEWPARAM(0, 0), 0);
    expect(-1, r);
    r = SendMessageA(hToolbar, TB_ADDSTRINGA, 0, (LPARAM)answer);
    expect(0, r);
    r = SendMessageA(hToolbar, TB_GETSTRINGA, MAKEWPARAM(0, 0), 0);
    expect(lstrlenA(answer), r);
    r = SendMessageW(hToolbar, TB_GETSTRINGW, MAKEWPARAM(0, 0), 0);
    expect(lstrlenA(answer), r);
    r = SendMessageA(hToolbar, TB_GETSTRINGA, MAKEWPARAM(sizeof(str), 0), (LPARAM)str);
    expect(lstrlenA(answer), r);
    expect(0, lstrcmpA(answer, str));
    r = SendMessageW(hToolbar, TB_GETSTRINGW, MAKEWPARAM(sizeof(strW), 0), (LPARAM)strW);
    expect(lstrlenA(answer), r);
    expect(0, lstrcmpW(answerW, strW));

    DestroyWindow(hToolbar);
}
