#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int X; int Y; } ;
struct TYPE_9__ {int Right; int Left; int Bottom; int Top; } ;
struct TYPE_13__ {TYPE_2__ dwSize; TYPE_1__ srWindow; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int QuadPart; } ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ COORD ;

/* Variables and functions */
 int /*<<< orphan*/  CONSOLE_TEXTMODE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,TYPE_4__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 scalar_t__ ScreenBuffer ; 
 TYPE_6__ ScreenBufferInfo ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ WaitableTimer ; 
 char* app_name ; 
 int /*<<< orphan*/  myself ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int FUNC12(int argc, WCHAR* argv[])
{
    LARGE_INTEGER lint;
    DWORD Written;
    COORD Coord = { 0, 0 };

    myself = FUNC6(NULL);

    FUNC4(FUNC7(STD_OUTPUT_HANDLE),
                               &ScreenBufferInfo);
    ScreenBufferInfo.dwSize.X = ScreenBufferInfo.srWindow.Right - ScreenBufferInfo.srWindow.Left + 1;
    ScreenBufferInfo.dwSize.Y = ScreenBufferInfo.srWindow.Bottom - ScreenBufferInfo.srWindow.Top + 1;
    ScreenBuffer = FUNC1(GENERIC_WRITE,
                                             0,
                                             NULL,
                                             CONSOLE_TEXTMODE_BUFFER,
                                             NULL);
    if (ScreenBuffer == INVALID_HANDLE_VALUE)
    {
        FUNC11(L"%s: could not create a new screen buffer\n", app_name);
        return EXIT_FAILURE;
    }

    /* Fill buffer with black background */
    FUNC3(ScreenBuffer,
                               0,
                               ScreenBufferInfo.dwSize.X * ScreenBufferInfo.dwSize.Y,
                               Coord,
                               &Written);

    WaitableTimer = FUNC2(NULL, FALSE, NULL);
    if (WaitableTimer == INVALID_HANDLE_VALUE)
    {
        FUNC11(L"CreateWaitabletimer() failed\n");
        return 1;
    }
    lint.QuadPart = -2000000;
    if (!FUNC10(WaitableTimer, &lint, 200, NULL, NULL, FALSE))
    {
        FUNC11(L"SetWaitableTimer() failed: 0x%lx\n", FUNC5());
        return 2;
    }
    FUNC9(ScreenBuffer);
    FUNC8();
    FUNC0(ScreenBuffer);
    return EXIT_SUCCESS;
}