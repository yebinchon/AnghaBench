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
typedef  int /*<<< orphan*/  org_value ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int ERROR_ACCESS_DENIED ; 
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  TransmissionRetryTimeoutA ; 
 int /*<<< orphan*/  WinNT_CV_WindowsA ; 
 int /*<<< orphan*/  cmd_GetTransmissionRetryTimeoutW ; 
 scalar_t__ emptyA ; 
 int /*<<< orphan*/  hXcv ; 
 int FUNC7 (char*) ; 
 char* num_0A ; 
 char* num_1000000A ; 
 char* num_1A ; 
 char* num_999999A ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    CHAR    org_value[16];
    HKEY    hroot = NULL;
    DWORD   buffer[2];
    DWORD   res;
    DWORD   needed;
    DWORD   len;


    /* ask for needed size */
    needed = (DWORD) 0xdeadbeef;
    FUNC6(0xdeadbeef);
    res = FUNC9(hXcv, cmd_GetTransmissionRetryTimeoutW, NULL, 0, NULL, 0, &needed);
    if (res == ERROR_INVALID_PARAMETER) {
        FUNC10("'GetTransmissionRetryTimeout' not supported\n");
        return;
    }
    len = sizeof(DWORD);
    FUNC8( (res == ERROR_INSUFFICIENT_BUFFER) && (needed == len),
        "returned %d with %u and %u (expected ERROR_INSUFFICIENT_BUFFER "
        "and '%u')\n", res, FUNC0(), needed, len);
    len = needed;

    /* Read the original value from the registry */
    res = FUNC3(HKEY_LOCAL_MACHINE, WinNT_CV_WindowsA, 0, KEY_ALL_ACCESS, &hroot);
    if (res == ERROR_ACCESS_DENIED) {
        FUNC10("ACCESS_DENIED\n");
        return;
    }

    if (res != ERROR_SUCCESS) {
        /* unable to open the registry: skip the test */
        FUNC10("got %d\n", res);
        return;
    }

    org_value[0] = '\0';
    needed = sizeof(org_value)-1 ;
    res = FUNC4(hroot, TransmissionRetryTimeoutA, NULL, NULL, (PBYTE) org_value, &needed);
    FUNC8( (res == ERROR_SUCCESS) || (res == ERROR_FILE_NOT_FOUND),
        "returned %u and %u for \"%s\" (expected ERROR_SUCCESS or "
        "ERROR_FILE_NOT_FOUND)\n", res, needed, org_value);

    /* Get default value (documented as 90 in the w2k reskit, but that is wrong) */
    FUNC2(hroot, TransmissionRetryTimeoutA);
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    FUNC6(0xdeadbeef);
    res = FUNC9(hXcv, cmd_GetTransmissionRetryTimeoutW, NULL, 0, (PBYTE) buffer, len, &needed);
    FUNC8( (res == ERROR_SUCCESS) && (buffer[0] == 45),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '45')\n", res, FUNC0(), needed, buffer[0]);

    /* the default timeout is returned, when the value is empty */
    res = FUNC5(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)emptyA, 1);
    FUNC8(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", FUNC0());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    FUNC6(0xdeadbeef);
    res = FUNC9(hXcv, cmd_GetTransmissionRetryTimeoutW, NULL, 0, (PBYTE) buffer, len, &needed);
    FUNC8( (res == ERROR_SUCCESS) && (buffer[0] == 45),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '45')\n", res, FUNC0(), needed, buffer[0]);

    /* the dialog is limited (1 - 999999), but that is done somewhere else */
    res = FUNC5(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_0A, FUNC7(num_0A)+1);
    FUNC8(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", FUNC0());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    FUNC6(0xdeadbeef);
    res = FUNC9(hXcv, cmd_GetTransmissionRetryTimeoutW, NULL, 0, (PBYTE) buffer, len, &needed);
    FUNC8( (res == ERROR_SUCCESS) && (buffer[0] == 0),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '0')\n", res, FUNC0(), needed, buffer[0]);


    res = FUNC5(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_1A, FUNC7(num_1A)+1);
    FUNC8(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", FUNC0());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    FUNC6(0xdeadbeef);
    res = FUNC9(hXcv, cmd_GetTransmissionRetryTimeoutW, NULL, 0, (PBYTE) buffer, len, &needed);
    FUNC8( (res == ERROR_SUCCESS) && (buffer[0] == 1),
        "returned %d with %u and %u for %d\n (expected 'ERROR_SUCCESS' "
        "for '1')\n", res, FUNC0(), needed, buffer[0]);

    res = FUNC5(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_999999A, FUNC7(num_999999A)+1);
    FUNC8(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", FUNC0());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    FUNC6(0xdeadbeef);
    res = FUNC9(hXcv, cmd_GetTransmissionRetryTimeoutW, NULL, 0, (PBYTE) buffer, len, &needed);
    FUNC8( (res == ERROR_SUCCESS) && (buffer[0] == 999999),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '999999')\n", res, FUNC0(), needed, buffer[0]);


    res = FUNC5(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)num_1000000A, FUNC7(num_1000000A)+1);
    FUNC8(res == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", FUNC0());
    needed = (DWORD) 0xdeadbeef;
    buffer[0] = 0xdeadbeef;
    FUNC6(0xdeadbeef);
    res = FUNC9(hXcv, cmd_GetTransmissionRetryTimeoutW, NULL, 0, (PBYTE) buffer, len, &needed);
    FUNC8( (res == ERROR_SUCCESS) && (buffer[0] == 1000000),
        "returned %d with %u and %u for %d\n (expected ERROR_SUCCESS "
        "for '1000000')\n", res, FUNC0(), needed, buffer[0]);

    /* restore the original value */
    FUNC2(hroot, TransmissionRetryTimeoutA);
    if (org_value[0]) {
        res = FUNC5(hroot, TransmissionRetryTimeoutA, 0, REG_SZ, (PBYTE)org_value, FUNC7(org_value)+1);
        FUNC8(res == ERROR_SUCCESS, "unable to restore original value (got %u): %s\n", res, org_value);
    }

    FUNC1(hroot);
}