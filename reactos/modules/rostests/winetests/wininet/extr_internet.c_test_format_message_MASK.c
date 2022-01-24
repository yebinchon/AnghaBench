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
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INTERNET_CANNOT_CONNECT ; 
 int /*<<< orphan*/  ERROR_INTERNET_CONNECTION_ABORTED ; 
 int /*<<< orphan*/  ERROR_INTERNET_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR_INTERNET_INVALID_OPERATION ; 
 int /*<<< orphan*/  ERROR_INTERNET_INVALID_URL ; 
 int /*<<< orphan*/  ERROR_INTERNET_ITEM_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INTERNET_NAME_NOT_RESOLVED ; 
 int /*<<< orphan*/  ERROR_INTERNET_OPERATION_CANCELLED ; 
 int /*<<< orphan*/  ERROR_INTERNET_SEC_CERT_CN_INVALID ; 
 int /*<<< orphan*/  ERROR_INTERNET_SEC_CERT_DATE_INVALID ; 
 int /*<<< orphan*/  ERROR_INTERNET_TIMEOUT ; 
 int /*<<< orphan*/  ERROR_INTERNET_UNRECOGNIZED_SCHEME ; 
 int /*<<< orphan*/  FORMAT_MESSAGE_FROM_HMODULE ; 
 int /*<<< orphan*/  FORMAT_MESSAGE_FROM_SYSTEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(HMODULE hdll)
{
    DWORD ret;
    CHAR out[0x100];

    /* These messages come from wininet and not the system. */
    ret = FUNC0(FORMAT_MESSAGE_FROM_SYSTEM , NULL, ERROR_INTERNET_TIMEOUT,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret == 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_TIMEOUT,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_INTERNAL_ERROR,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_INVALID_URL,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_UNRECOGNIZED_SCHEME,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_NAME_NOT_RESOLVED,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_INVALID_OPERATION,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0 || FUNC2(!ret) /* XP, w2k3 */, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_OPERATION_CANCELLED,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_ITEM_NOT_FOUND,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_CANNOT_CONNECT,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_CONNECTION_ABORTED,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_SEC_CERT_DATE_INVALID,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FUNC0(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_SEC_CERT_CN_INVALID,
                         FUNC1(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), NULL);
    FUNC3(ret != 0, "FormatMessageA returned %d\n", ret);
}