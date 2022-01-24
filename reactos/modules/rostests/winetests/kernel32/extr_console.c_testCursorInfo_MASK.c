#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dwSize; int /*<<< orphan*/  bVisible; } ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_1__ CONSOLE_CURSOR_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(HANDLE hCon)
{
    BOOL ret;
    CONSOLE_CURSOR_INFO info;

    FUNC2(0xdeadbeef);
    ret = FUNC0(NULL, NULL);
    FUNC3(!ret, "Expected failure\n");
    FUNC3(FUNC1() == ERROR_INVALID_HANDLE, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_HANDLE, FUNC1());

    FUNC2(0xdeadbeef);
    info.dwSize = -1;
    ret = FUNC0(NULL, &info);
    FUNC3(!ret, "Expected failure\n");
    FUNC3(info.dwSize == -1, "Expected no change for dwSize\n");
    FUNC3(FUNC1() == ERROR_INVALID_HANDLE, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_HANDLE, FUNC1());

    /* Test the correct call first to distinguish between win9x and the rest */
    FUNC2(0xdeadbeef);
    ret = FUNC0(hCon, &info);
    FUNC3(ret, "Expected success\n");
    FUNC3(info.dwSize == 25 ||
       info.dwSize == 12 /* win9x */,
       "Expected 12 or 25, got %d\n", info.dwSize);
    FUNC3(info.bVisible, "Expected the cursor to be visible\n");
    FUNC3(FUNC1() == 0xdeadbeef, "GetLastError: expecting %u got %u\n",
       0xdeadbeef, FUNC1());

    /* Don't test NULL CONSOLE_CURSOR_INFO, it crashes on win9x and win7 */
}