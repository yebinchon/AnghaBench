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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int ERROR_SUCCESS ; 
 int GLE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int REG_SZ ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 scalar_t__ FUNC7 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(int line, LPCWSTR name, LPCWSTR string,
                                   DWORD full_byte_len)
{
    DWORD ret, type, cbData;
    BYTE* value;

    type=0xdeadbeef;
    cbData=0xdeadbeef;
    /* When successful RegQueryValueExW() leaves GLE as is,
     * so we must reset it to detect unimplemented functions.
     */
    FUNC5(0xdeadbeef);
    ret = FUNC4(hkey_main, name, NULL, &type, NULL, &cbData);
    GLE = FUNC0();
    FUNC6(ret == ERROR_SUCCESS, "RegQueryValueExW/1 failed: %d, GLE=%d\n", ret, GLE);
    if(GLE == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC9("RegQueryValueExW() is not implemented\n");
        return;
    }

    FUNC6(type == REG_SZ, "RegQueryValueExW/1 returned type %d\n", type);
    FUNC6(cbData == full_byte_len,
        "cbData=%d instead of %d\n", cbData, full_byte_len);

    /* Give enough space to overflow by one WCHAR */
    value = FUNC2(FUNC1(), 0, cbData+2);
    FUNC8(value, 0xbd, cbData+2);
    type=0xdeadbeef;
    ret = FUNC4(hkey_main, name, NULL, &type, value, &cbData);
    GLE = FUNC0();
    FUNC6(ret == ERROR_SUCCESS, "RegQueryValueExW/2 failed: %d, GLE=%d\n", ret, GLE);
    if (string)
    {
        FUNC6(FUNC7(value, string, cbData) == 0, "RegQueryValueExW failed: %s/%d != %s/%d\n",
           FUNC10((WCHAR*)value, cbData / sizeof(WCHAR)), cbData,
           FUNC10(string, full_byte_len / sizeof(WCHAR)), full_byte_len);
    }
    /* This implies that when cbData == 0, RegQueryValueExW() should not modify the buffer */
    FUNC6(*(value+cbData) == 0xbd, "RegQueryValueExW/2 overflowed at %u: %02x != bd\n", cbData, *(value+cbData));
    FUNC6(*(value+cbData+1) == 0xbd, "RegQueryValueExW/2 overflowed at %u+1: %02x != bd\n", cbData, *(value+cbData+1));
    FUNC3(FUNC1(), 0, value);
}