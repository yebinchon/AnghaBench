#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wcex ;
struct TYPE_4__ {int cbSize; int style; } ;
typedef  TYPE_1__ WNDCLASSEXW ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CS_DBLCLKS ; 
 int CS_GLOBALCLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    BOOL ret;
    WNDCLASSEXW wcex;
    static const WCHAR AtlAxWin80[] = {'A','t','l','A','x','W','i','n','8','0',0};
    static const WCHAR AtlAxWinLic80[] = {'A','t','l','A','x','W','i','n','L','i','c','8','0',0};
    static HMODULE hinstance = 0;

    ret = FUNC0();
    FUNC4(ret, "AtlAxWinInit failed\n");

    hinstance = FUNC2(NULL);

    FUNC3(&wcex, 0, sizeof(wcex));
    wcex.cbSize = sizeof(wcex);
    ret = FUNC1(hinstance, AtlAxWin80, &wcex);
    FUNC4(ret, "AtlAxWin80 has not registered\n");
    FUNC4(wcex.style == (CS_GLOBALCLASS | CS_DBLCLKS), "wcex.style %08x\n", wcex.style);

    FUNC3(&wcex, 0, sizeof(wcex));
    wcex.cbSize = sizeof(wcex);
    ret = FUNC1(hinstance, AtlAxWinLic80, &wcex);
    FUNC4(ret, "AtlAxWinLic80 has not registered\n");
    FUNC4(wcex.style == (CS_GLOBALCLASS | CS_DBLCLKS), "wcex.style %08x\n", wcex.style);
}