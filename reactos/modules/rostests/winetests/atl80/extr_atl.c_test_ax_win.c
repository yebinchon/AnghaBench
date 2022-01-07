
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wcex ;
struct TYPE_4__ {int cbSize; int style; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef char WCHAR ;
typedef int HMODULE ;
typedef int BOOL ;


 int AtlAxWinInit () ;
 int CS_DBLCLKS ;
 int CS_GLOBALCLASS ;
 int GetClassInfoExW (int ,char const*,TYPE_1__*) ;
 int GetModuleHandleA (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_ax_win(void)
{
    BOOL ret;
    WNDCLASSEXW wcex;
    static const WCHAR AtlAxWin80[] = {'A','t','l','A','x','W','i','n','8','0',0};
    static const WCHAR AtlAxWinLic80[] = {'A','t','l','A','x','W','i','n','L','i','c','8','0',0};
    static HMODULE hinstance = 0;

    ret = AtlAxWinInit();
    ok(ret, "AtlAxWinInit failed\n");

    hinstance = GetModuleHandleA(((void*)0));

    memset(&wcex, 0, sizeof(wcex));
    wcex.cbSize = sizeof(wcex);
    ret = GetClassInfoExW(hinstance, AtlAxWin80, &wcex);
    ok(ret, "AtlAxWin80 has not registered\n");
    ok(wcex.style == (CS_GLOBALCLASS | CS_DBLCLKS), "wcex.style %08x\n", wcex.style);

    memset(&wcex, 0, sizeof(wcex));
    wcex.cbSize = sizeof(wcex);
    ret = GetClassInfoExW(hinstance, AtlAxWinLic80, &wcex);
    ok(ret, "AtlAxWinLic80 has not registered\n");
    ok(wcex.style == (CS_GLOBALCLASS | CS_DBLCLKS), "wcex.style %08x\n", wcex.style);
}
