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
typedef  int /*<<< orphan*/  tmp_var ;
typedef  int /*<<< orphan*/  tmp_dirW ;
typedef  int /*<<< orphan*/  buf ;
typedef  float WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,float*) ; 
 int FUNC4 () ; 
 float* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,float*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (float*,float*) ; 
 int /*<<< orphan*/  FUNC10 (float*,float const*) ; 
 int FUNC11 (float*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void FUNC16(char* tmp_dir)
{
    DWORD len, slen, len_with_null;
    WCHAR buf[MAX_PATH], *long_buf;
    WCHAR tmp_dirW[MAX_PATH];
    static const WCHAR fooW[] = {'f','o','o',0};

    FUNC7(CP_ACP,0,tmp_dir,-1,tmp_dirW,sizeof(tmp_dirW)/sizeof(*tmp_dirW));
    len_with_null = FUNC11(tmp_dirW) + 1;

    /* This one is different from ANSI version: ANSI version doesn't
     * touch the buffer, unicode version usually truncates the buffer
     * to zero size. NT still exaggerates the required buffer size
     * sometimes so we cannot test for an exact match. Finally, the
     * 'len_with_null - 1' case is so buggy on Windows it's not testable.
     * For instance on NT4 it will sometimes return a path without the
     * trailing '\\' and sometimes return an error.
     */

    FUNC10(buf, fooW);
    len = FUNC3(MAX_PATH, buf);
    if (len == 0 && FUNC1() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC15("GetTempPathW is not available\n");
        return;
    }
    FUNC12(FUNC9(buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    FUNC12(len == FUNC11(buf), "returned length should be equal to the length of string\n");

    FUNC10(buf, fooW);
    len = FUNC3(1, buf);
    FUNC12(buf[0] == 0, "unicode version should truncate the buffer to zero size\n");
    FUNC12(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);

    len = FUNC3(0, NULL);
    FUNC12(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);

    FUNC10(buf, fooW);
    len = FUNC3(len, buf);
    FUNC12(FUNC9(buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    FUNC12(len == FUNC11(buf), "returned length should be equal to the length of string\n");

    for(len = 0; len < sizeof(buf) / sizeof(buf[0]); len++)
        buf[len] = 'a';
    len = FUNC3(len, buf);
    FUNC12(FUNC9(buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    FUNC12(len == FUNC11(buf), "returned length should be equal to the length of string\n");
    /* The rest of the buffer must be zeroed */
    slen = len + 1;
    for(len++; len < sizeof(buf) / sizeof(buf[0]); len++)
        FUNC12(buf[len] == '\0', "expected NULL at [%d], got 0x%x\n", len, buf[len]);

    /* When the buffer is not long enough the length passed is zeroed */
    for(len = 0; len < sizeof(buf) / sizeof(buf[0]); len++)
        buf[len] = 'a';
    len = FUNC3(slen / 2, buf);
    FUNC12(len == slen || FUNC8(len == slen + 1) /* read the big comment above */ ,
       "expected %d, got %d\n", slen, len);

    {
        /* In Windows 8 when TMP var points to a drive only (like C:) instead of a
        * full directory the behavior changes. It will start filling the path but
        * will later truncate the buffer before returning. So the generic test
        * below will fail for this Windows 8 corner case.
        */
        char tmp_var[64];
        DWORD version = FUNC4();
        FUNC0("TMP", tmp_var, sizeof(tmp_var));
        if (FUNC14(tmp_var) == 2 && version >= 0x00060002)
            return;
    }

    for(len = 0; len < slen / 2; len++)
        FUNC12(buf[len] == '\0', "expected NULL at [%d], got 0x%x\n", len, buf[len]);
    for(; len < sizeof(buf) / sizeof(buf[0]); len++)
        FUNC12(buf[len] == 'a', "expected 'a' at [%d], got 0x%x\n", len, buf[len]);

    /* bogus application from bug 38220 passes the count value in sizeof(buffer)
     * instead the correct count of WCHAR, this test catches this case. */
    slen = 65534;
    long_buf = FUNC5(FUNC2(), 0, slen * sizeof(WCHAR));
    if (!long_buf)
    {
        FUNC13("Could not allocate memory for the test\n");
        return;
    }
    for(len = 0; len < slen; len++)
        long_buf[len] = 0xCC;
    len = FUNC3(slen, long_buf);
    FUNC12(FUNC9(long_buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    FUNC12(len == FUNC11(long_buf), "returned length should be equal to the length of string\n");
    /* the remaining buffer must be zeroed up to different values in different OS versions.
     * <= XP - 32766
     *  > XP - 32767
     * to simplify testing we will test only until XP.
     */
    for(; len < 32767; len++)
        FUNC12(long_buf[len] == '\0', "expected NULL at [%d], got 0x%x\n", len, long_buf[len]);
    /* we will know skip the test that is in the middle of the OS difference by
     * incrementing len and then resume the test for the untouched part. */
    for(len++; len < slen; len++)
        FUNC12(long_buf[len] == 0xcc, "expected 0xcc at [%d], got 0x%x\n", len, long_buf[len]);

    FUNC6(FUNC2(), 0, long_buf);
}