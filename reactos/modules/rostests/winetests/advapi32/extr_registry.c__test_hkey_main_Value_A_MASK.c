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
typedef  char* LPCSTR ;
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
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

__attribute__((used)) static void FUNC12(int line, LPCSTR name, LPCSTR string,
                                   DWORD full_byte_len)
{
    DWORD ret, type, cbData;
    DWORD str_byte_len;
    BYTE* value;

    type=0xdeadbeef;
    cbData=0xdeadbeef;
    /* When successful RegQueryValueExA() leaves GLE as is,
     * so we must reset it to detect unimplemented functions.
     */
    FUNC5(0xdeadbeef);
    ret = FUNC4(hkey_main, name, NULL, &type, NULL, &cbData);
    GLE = FUNC0();
    FUNC6(ret == ERROR_SUCCESS, "RegQueryValueExA/1 failed: %d, GLE=%d\n", ret, GLE);
    /* It is wrong for the Ansi version to not be implemented */
    FUNC10(GLE == 0xdeadbeef, "RegQueryValueExA set GLE = %u\n", GLE);
    if(GLE == ERROR_CALL_NOT_IMPLEMENTED) return;

    str_byte_len = (string ? FUNC7(string) : 0) + 1;
    FUNC6(type == REG_SZ, "RegQueryValueExA/1 returned type %d\n", type);
    FUNC6(cbData == full_byte_len, "cbData=%d instead of %d or %d\n", cbData, full_byte_len, str_byte_len);

    value = FUNC2(FUNC1(), 0, cbData+1);
    FUNC9(value, 0xbd, cbData+1);
    type=0xdeadbeef;
    ret = FUNC4(hkey_main, name, NULL, &type, value, &cbData);
    GLE = FUNC0();
    FUNC6(ret == ERROR_SUCCESS, "RegQueryValueExA/2 failed: %d, GLE=%d\n", ret, GLE);
    if (!string)
    {
        /* When cbData == 0, RegQueryValueExA() should not modify the buffer */
        FUNC6(*value == 0xbd, "RegQueryValueExA overflowed: cbData=%u *value=%02x\n", cbData, *value);
    }
    else
    {
        FUNC6(FUNC8(value, string, cbData) == 0, "RegQueryValueExA/2 failed: %s/%d != %s/%d\n",
           FUNC11((char*)value, cbData), cbData,
           FUNC11(string, full_byte_len), full_byte_len);
        FUNC6(*(value+cbData) == 0xbd, "RegQueryValueExA/2 overflowed at offset %u: %02x != bd\n", cbData, *(value+cbData));
    }
    FUNC3(FUNC1(), 0, value);
}