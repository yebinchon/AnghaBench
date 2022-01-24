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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  BCM_GETNOTE ; 
 int /*<<< orphan*/  BCM_GETNOTELENGTH ; 
 int /*<<< orphan*/  BCM_SETNOTE ; 
 scalar_t__ BS_COMMANDLINK ; 
 scalar_t__ BS_DEFCOMMANDLINK ; 
 scalar_t__ BS_PUSHBUTTON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_NOT_SUPPORTED ; 
 int FUNC2 () ; 
 int NO_ERROR ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    HWND hwnd;
    BOOL ret;
    WCHAR test_w[] = {'t', 'e', 's', 't', 0};
    WCHAR tes_w[] = {'t', 'e', 's', 0};
    WCHAR deadbeef_w[] = {'d', 'e', 'a', 'd', 'b', 'e', 'e', 'f', 0};
    WCHAR buffer_w[10];
    DWORD size;
    DWORD error;
    INT type;

    hwnd = FUNC5(BS_COMMANDLINK, NULL);
    FUNC9(hwnd != NULL, "Expect hwnd not null\n");
    FUNC4(0xdeadbeef);
    size = FUNC0(buffer_w);
    ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, (LPARAM)buffer_w);
    error = FUNC2();
    if (!ret && error == 0xdeadbeef)
    {
        FUNC10("BCM_GETNOTE message is unavailable. Skipping note tests\n"); /* xp or 2003 */
        FUNC1(hwnd);
        return;
    }
    FUNC1(hwnd);

    for (type = BS_PUSHBUTTON; type <= BS_DEFCOMMANDLINK; type++)
    {
        if (type == BS_DEFCOMMANDLINK || type == BS_COMMANDLINK)
        {
            hwnd = FUNC5(type, NULL);
            FUNC9(hwnd != NULL, "Expect hwnd not null\n");

            /* Get note when note hasn't been not set yet */
            FUNC4(0xdeadbeef);
            FUNC7(buffer_w, deadbeef_w);
            size = FUNC0(buffer_w);
            ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, (LPARAM)buffer_w);
            error = FUNC2();
            FUNC9(!ret, "Expect BCM_GETNOTE return false\n");
            FUNC9(!FUNC6(buffer_w, deadbeef_w), "Expect note: %s, got: %s\n",
               FUNC11(deadbeef_w), FUNC11(buffer_w));
            FUNC9(size == FUNC0(buffer_w), "Got: %d\n", size);
            FUNC9(error == ERROR_INVALID_PARAMETER, "Expect last error: 0x%08x, got: 0x%08x\n",
               ERROR_INVALID_PARAMETER, error);

            /* Get note length when note is not set */
            ret = FUNC3(hwnd, BCM_GETNOTELENGTH, 0, 0);
            FUNC9(ret == 0, "Expect note length: %d, got: %d\n", 0, ret);

            /* Successful set note, get note and get note length */
            FUNC4(0xdeadbeef);
            ret = FUNC3(hwnd, BCM_SETNOTE, 0, (LPARAM)test_w);
            FUNC9(ret, "Expect BCM_SETNOTE return true\n");
            error = FUNC2();
            FUNC9(error == NO_ERROR, "Expect last error: 0x%08x, got: 0x%08x\n", NO_ERROR, error);

            FUNC4(0xdeadbeef);
            FUNC7(buffer_w, deadbeef_w);
            size = FUNC0(buffer_w);
            ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, (LPARAM)buffer_w);
            FUNC9(ret, "Expect BCM_GETNOTE return true\n");
            FUNC9(!FUNC6(buffer_w, test_w), "Expect note: %s, got: %s\n", FUNC11(test_w),
               FUNC11(buffer_w));
            FUNC9(size == FUNC0(buffer_w), "Got: %d\n", size);
            error = FUNC2();
            FUNC9(error == NO_ERROR, "Expect last error: 0x%08x, got: 0x%08x\n", NO_ERROR, error);

            ret = FUNC3(hwnd, BCM_GETNOTELENGTH, 0, 0);
            FUNC9(ret == FUNC0(test_w) - 1, "Got: %d\n", ret);

            /* Insufficient buffer, return partial string */
            FUNC4(0xdeadbeef);
            FUNC7(buffer_w, deadbeef_w);
            size = FUNC0(test_w) - 1;
            ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, (LPARAM)buffer_w);
            FUNC9(!ret, "Expect BCM_GETNOTE return false\n");
            FUNC9(!FUNC6(buffer_w, tes_w), "Expect note: %s, got: %s\n", FUNC11(tes_w),
               FUNC11(buffer_w));
            FUNC9(size == FUNC0(test_w), "Got: %d\n", size);
            error = FUNC2();
            FUNC9(error == ERROR_INSUFFICIENT_BUFFER, "Expect last error: 0x%08x, got: 0x%08x\n",
               ERROR_INSUFFICIENT_BUFFER, error);

            /* Set note with NULL buffer */
            FUNC4(0xdeadbeef);
            ret = FUNC3(hwnd, BCM_SETNOTE, 0, 0);
            FUNC9(ret, "Expect BCM_SETNOTE return false\n");
            error = FUNC2();
            FUNC9(error == NO_ERROR, "Expect last error: 0x%08x, got: 0x%08x\n", NO_ERROR, error);

            /* Check that set note with NULL buffer make note empty */
            FUNC4(0xdeadbeef);
            FUNC7(buffer_w, deadbeef_w);
            size = FUNC0(buffer_w);
            ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, (LPARAM)buffer_w);
            FUNC9(ret, "Expect BCM_GETNOTE return true\n");
            FUNC9(FUNC8(buffer_w) == 0, "Expect note length 0\n");
            FUNC9(size == FUNC0(buffer_w), "Got: %d\n", size);
            error = FUNC2();
            FUNC9(error == NO_ERROR, "Expect last error: 0x%08x, got: 0x%08x\n", NO_ERROR, error);
            ret = FUNC3(hwnd, BCM_GETNOTELENGTH, 0, 0);
            FUNC9(ret == 0, "Expect note length: %d, got: %d\n", 0, ret);

            /* Get note with NULL buffer */
            FUNC4(0xdeadbeef);
            size = FUNC0(buffer_w);
            ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, 0);
            FUNC9(!ret, "Expect BCM_SETNOTE return false\n");
            FUNC9(size == FUNC0(buffer_w), "Got: %d\n", size);
            error = FUNC2();
            FUNC9(error == ERROR_INVALID_PARAMETER, "Expect last error: 0x%08x, got: 0x%08x\n",
               ERROR_INVALID_PARAMETER, error);

            /* Get note with NULL size */
            FUNC4(0xdeadbeef);
            FUNC7(buffer_w, deadbeef_w);
            ret = FUNC3(hwnd, BCM_GETNOTE, 0, (LPARAM)buffer_w);
            FUNC9(!ret, "Expect BCM_SETNOTE return false\n");
            FUNC9(!FUNC6(buffer_w, deadbeef_w), "Expect note: %s, got: %s\n",
               FUNC11(deadbeef_w), FUNC11(buffer_w));
            error = FUNC2();
            FUNC9(error == ERROR_INVALID_PARAMETER, "Expect last error: 0x%08x, got: 0x%08x\n",
               ERROR_INVALID_PARAMETER, error);

            /* Get note with zero size */
            FUNC4(0xdeadbeef);
            size = 0;
            FUNC7(buffer_w, deadbeef_w);
            ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, (LPARAM)buffer_w);
            FUNC9(!ret, "Expect BCM_GETNOTE return false\n");
            FUNC9(!FUNC6(buffer_w, deadbeef_w), "Expect note: %s, got: %s\n",
               FUNC11(deadbeef_w), FUNC11(buffer_w));
            FUNC9(size == 1, "Got: %d\n", size);
            error = FUNC2();
            FUNC9(error == ERROR_INSUFFICIENT_BUFFER, "Expect last error: 0x%08x, got: 0x%08x\n",
               ERROR_INSUFFICIENT_BUFFER, error);

            FUNC1(hwnd);
        }
        else
        {
            hwnd = FUNC5(type, NULL);
            FUNC9(hwnd != NULL, "Expect hwnd not null\n");
            FUNC4(0xdeadbeef);
            size = FUNC0(buffer_w);
            ret = FUNC3(hwnd, BCM_GETNOTE, (WPARAM)&size, (LPARAM)buffer_w);
            FUNC9(!ret, "Expect BCM_GETNOTE return false\n");
            error = FUNC2();
            FUNC9(error == ERROR_NOT_SUPPORTED, "Expect last error: 0x%08x, got: 0x%08x\n",
               ERROR_NOT_SUPPORTED, error);
            FUNC1(hwnd);
        }
    }
}