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
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_ERROR_RCODE_NXRRSET ; 
 scalar_t__ ERROR_INVALID_WINDOW_HANDLE ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

void FUNC4(HWND hWnd)
{
    MSG msg;

    FUNC2(DNS_ERROR_RCODE_NXRRSET);

    FUNC3(FUNC1(&msg, hWnd, 0, 0) == -1, "\n");
    FUNC3(FUNC0() == ERROR_INVALID_WINDOW_HANDLE, "GetLastError() = %lu\n", FUNC0());
}