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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPM_SETADDRESS ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HWND hwnd;
    CHAR ip[16];
    INT r;

    hwnd = FUNC5();
    if (!hwnd)
    {
        FUNC9("IPAddress control not implemented\n");
        return;
    }

    /* check text just after creation */
    r = FUNC2(hwnd, ip, FUNC0(ip));
    FUNC6(7, r);
    FUNC7(FUNC8(ip, "0.0.0.0") == 0, "Expected null IP address, got %s\n", ip);

    FUNC4(hwnd, IPM_SETADDRESS, 0, FUNC3(127, 0, 0, 1));
    r = FUNC2(hwnd, ip, FUNC0(ip));
    FUNC6(9, r);
    FUNC7(FUNC8(ip, "127.0.0.1") == 0, "Expected 127.0.0.1, got %s\n", ip);

    FUNC1(hwnd);
}