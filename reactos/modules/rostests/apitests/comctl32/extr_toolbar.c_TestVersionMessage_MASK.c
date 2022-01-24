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
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_GETVERSION ; 
 int /*<<< orphan*/  CCM_SETVERSION ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOOLBARCLASSNAMEW ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

void FUNC4()
{
    HWND hwnd;
    int version;

    hwnd = FUNC0(0, TOOLBARCLASSNAMEW, L"Test", 0, 0, 0, 0, 0, 0, 0, 0, NULL);
    FUNC3(hwnd != NULL, "CreateWindowEx failed\n");

    version = FUNC2(hwnd, CCM_GETVERSION, 0, 0);
    FUNC3(version == 6, "Got %d, expected 6\n", version);

    version = FUNC2(hwnd, CCM_SETVERSION, 5, 0);
    FUNC3(version == 6, "Got %d, expected 6\n", version);

    version = FUNC2(hwnd, CCM_GETVERSION, 0, 0);
    FUNC3(version == 6, "Got %d, expected 6\n", version);

    version = FUNC2(hwnd, CCM_SETVERSION, 7, 0);
    FUNC3(version == 6, "Got %d, expected 6\n", version);

    version = FUNC2(hwnd, CCM_GETVERSION, 0, 0);
    FUNC3(version == 6, "Got %d, expected 6\n", version);

    version = FUNC2(hwnd, CCM_SETVERSION, 4, 0);
    FUNC3(version == 6, "Got %d, expected 6\n", version);

    version = FUNC2(hwnd, CCM_GETVERSION, 0, 0);
    FUNC3(version == 6, "Got %d, expected 6\n", version);

    FUNC1(hwnd);
}