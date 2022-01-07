
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wcex ;
struct TYPE_4__ {int cbSize; scalar_t__ style; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef char WCHAR ;
typedef int HMODULE ;
typedef int BOOL ;


 int AtlAxWinInit () ;
 scalar_t__ CS_GLOBALCLASS ;
 int GetClassInfoExW (int ,char const*,TYPE_1__*) ;
 int GetModuleHandleA (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_ax_win(void)
{
    BOOL ret;
    WNDCLASSEXW wcex;
    static const WCHAR AtlAxWin[] = {'A','t','l','A','x','W','i','n',0};
    static HMODULE hinstance = 0;

    ret = AtlAxWinInit();
    ok(ret, "AtlAxWinInit failed\n");

    hinstance = GetModuleHandleA(((void*)0));
    memset(&wcex, 0, sizeof(wcex));
    wcex.cbSize = sizeof(wcex);
    ret = GetClassInfoExW(hinstance, AtlAxWin, &wcex);
    ok(ret, "AtlAxWin has not registered\n");
    ok(wcex.style == CS_GLOBALCLASS, "wcex.style %08x\n", wcex.style);
}
