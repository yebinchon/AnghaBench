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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  REG_NOTIFY_CHANGE_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(void)
{
    HKEY key, subkey;
    HANDLE event;
    DWORD dwret;
    LONG ret;

    event = FUNC1(NULL, FALSE, TRUE, NULL);
    FUNC8(event != NULL, "CreateEvent failed, error %u\n", FUNC2());
    ret = FUNC4(hkey_main, "TestKey", &key);
    FUNC8(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC6(key, TRUE, REG_NOTIFY_CHANGE_NAME, event, TRUE);
    FUNC8(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    dwret = FUNC7(event, 0);
    FUNC8(dwret == WAIT_TIMEOUT, "expected WAIT_TIMEOUT, got %u\n", dwret);

    ret = FUNC4(key, "SubKey", &subkey);
    FUNC8(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    dwret = FUNC7(event, 0);
    FUNC8(dwret == WAIT_OBJECT_0, "expected WAIT_OBJECT_0, got %u\n", dwret);

    FUNC5(key, "");
    FUNC3(key);
    FUNC0(event);
}