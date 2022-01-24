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
typedef  int /*<<< orphan*/  wc ;
struct TYPE_4__ {int style; char const* lpszClassName; scalar_t__ hbrBackground; int /*<<< orphan*/  hCursor; int /*<<< orphan*/  hIcon; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ COLOR_3DFACE ; 
 int CS_DBLCLKS ; 
 int CS_HREDRAW ; 
 int CS_VREDRAW ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HEIGHT ; 
 int /*<<< orphan*/  IDC_ARROW ; 
 int /*<<< orphan*/  IDI_APPLICATION ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIDTH ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  WindowProc ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_IMEStages ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(void)
{
    WNDCLASSA wc;
    HWND hwnd;
    MSG msg;
    static const char s_szName[] = "MessageStateAnalyzerIME";

    FUNC16("IME_DoTest\n");
    FUNC4(s_IMEStages, FUNC0(s_IMEStages));

    /* register window class */
    FUNC13(&wc, sizeof(wc));
    wc.style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS;
    wc.lpfnWndProc = WindowProc;
    wc.hInstance = FUNC6(NULL);
    wc.hIcon = FUNC9(NULL, IDI_APPLICATION);
    wc.hCursor = FUNC8(NULL, IDC_ARROW);
    wc.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1);
    wc.lpszClassName = s_szName;
    if (!FUNC10(&wc))
    {
        FUNC15("RegisterClassW failed.\n");
        return;
    }

    /* create a window */
    hwnd = FUNC1(s_szName, s_szName, WS_OVERLAPPEDWINDOW,
                         0, 0, WIDTH, HEIGHT, NULL, NULL,
                         FUNC7(NULL), NULL);
    if (!hwnd)
    {
        FUNC15("CreateWindowW failed.\n");
        return;
    }

    /* message loop */
    while (FUNC5(&msg, NULL, 0, 0))
    {
        FUNC11(&msg);
        FUNC2(&msg);
    }

    FUNC14(FUNC12(s_szName, FUNC6(NULL)), TRUE);

    FUNC3();
}