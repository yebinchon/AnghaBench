#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  INTERNET_STATUS_HANDLE_CLOSING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int close_handle_cnt ; 
 int /*<<< orphan*/  complete_event ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(HINTERNET handle, int handle_cnt)
{
    BOOL res;

    close_handle_cnt = handle_cnt;

    FUNC3(INTERNET_STATUS_HANDLE_CLOSING, handle_cnt);
    res = FUNC2(handle);
    FUNC5(res, "InternetCloseHandle failed: %u\n", FUNC1());
    FUNC4(complete_event, INFINITE);
    FUNC0(INTERNET_STATUS_HANDLE_CLOSING, handle_cnt);
}