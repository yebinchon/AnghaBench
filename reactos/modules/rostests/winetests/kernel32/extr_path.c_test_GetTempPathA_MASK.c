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
typedef  int /*<<< orphan*/  buf ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int,char*) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(char* tmp_dir)
{
    DWORD len, slen, len_with_null;
    char buf[MAX_PATH];

    len_with_null = FUNC6(tmp_dir) + 1;

    FUNC3(buf, "foo");
    len = FUNC0(MAX_PATH, buf);
    FUNC5(len <= MAX_PATH, "should fit into MAX_PATH\n");
    FUNC5(FUNC2(buf, tmp_dir) == 0, "expected [%s], got [%s]\n",tmp_dir,buf);
    FUNC5(len == FUNC6(buf), "returned length should be equal to the length of string\n");

    /* Some versions of Windows touch the buffer, some don't so we don't
     * test that. Also, NT sometimes exaggerates the required buffer size
     * so we cannot test for an exact match. Finally, the
     * 'len_with_null - 1' case is so buggy on Windows it's not testable.
     * For instance in some cases Win98 returns len_with_null - 1 instead
     * of len_with_null.
     */
    len = FUNC0(1, buf);
    FUNC5(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);

    len = FUNC0(0, NULL);
    FUNC5(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);

    /* The call above gave us the buffer size that Windows thinks is needed
     * so the next call should work
     */
    FUNC3(buf, "foo");
    len = FUNC0(len, buf);
    FUNC5(FUNC2(buf, tmp_dir) == 0, "expected [%s], got [%s]\n",tmp_dir,buf);
    FUNC5(len == FUNC6(buf), "returned length should be equal to the length of string\n");

    FUNC4(buf, 'a', sizeof(buf));
    len = FUNC0(sizeof(buf), buf);
    FUNC5(FUNC2(buf, tmp_dir) == 0, "expected [%s], got [%s]\n",tmp_dir,buf);
    FUNC5(len == FUNC6(buf), "returned length should be equal to the length of string\n");
    /* The rest of the buffer remains untouched */
    slen = len + 1;
    for(len++; len < sizeof(buf); len++)
        FUNC5(buf[len] == 'a', "expected 'a' at [%d], got 0x%x\n", len, buf[len]);

    /* When the buffer is not long enough it remains untouched */
    FUNC4(buf, 'a', sizeof(buf));
    len = FUNC0(slen / 2, buf);
    FUNC5(len == slen || FUNC1(len == slen + 1) /* read the big comment above */ ,
       "expected %d, got %d\n", slen, len);
    for(len = 0; len < sizeof(buf) / sizeof(buf[0]); len++)
        FUNC5(buf[len] == 'a', "expected 'a' at [%d], got 0x%x\n", len, buf[len]);
}