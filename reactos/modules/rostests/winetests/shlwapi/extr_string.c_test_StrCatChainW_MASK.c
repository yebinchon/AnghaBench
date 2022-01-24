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
typedef  int /*<<< orphan*/  deadbeefW ;
typedef  int /*<<< orphan*/  deadW ;
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (char*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const WCHAR deadbeefW[] = {'D','e','A','d','B','e','E','f',0};
    static const WCHAR deadW[] = {'D','e','A','d',0};
    static const WCHAR beefW[] = {'B','e','E','f',0};

    WCHAR buf[32 + 1];
    DWORD ret;

    if (!&pStrCatChainW)
    {
        FUNC5("StrCatChainW is not available\n");
        return;
    }

    /* Test with NULL buffer */
    ret = FUNC4(NULL, 0, 0, beefW);
    FUNC3(ret == 0, "Expected StrCatChainW to return 0, got %u\n", ret);

    /* Test with empty buffer */
    FUNC2(buf, 0x11, sizeof(buf));
    ret = FUNC4(buf, 0, 0, beefW);
    FUNC3(ret == 0, "Expected StrCatChainW to return 0, got %u\n", ret);
    FUNC3(buf[0] == 0x1111, "Expected buf[0] = 0x1111, got %x\n", buf[0]);

    FUNC1(buf, deadbeefW, sizeof(deadbeefW));
    ret = FUNC4(buf, 0, -1, beefW);
    FUNC3(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");

    /* Append data to existing string with offset = -1 */
    FUNC2(buf, 0x11, sizeof(buf));
    ret = FUNC4(buf, 32, 0, deadW);
    FUNC3(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    ret = FUNC4(buf, 32, -1, beefW);
    FUNC3(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");

    /* Append data at a fixed offset */
    FUNC2(buf, 0x11, sizeof(buf));
    ret = FUNC4(buf, 32, 0, deadW);
    FUNC3(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    ret = FUNC4(buf, 32, 4, beefW);
    FUNC3(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");

    /* Buffer exactly sufficient for string + terminating null */
    FUNC2(buf, 0x11, sizeof(buf));
    ret = FUNC4(buf, 5, 0, deadW);
    FUNC3(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    /* Buffer too small, string will be truncated */
    FUNC2(buf, 0x11, sizeof(buf));
    ret = FUNC4(buf, 4, 0, deadW);
    if (ret == 4)
    {
        /* Windows 2000 and XP uses a slightly different implementation
         * for StrCatChainW, which doesn't ensure that strings are null-
         * terminated. Skip test if we detect such an implementation. */
        FUNC5("Windows2000/XP behaviour detected for StrCatChainW, skipping tests\n");
        return;
    }
    FUNC3(ret == 3, "Expected StrCatChainW to return 3, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadW, 3 * sizeof(WCHAR)), "Buffer contains wrong data\n");
    FUNC3(!buf[3], "String is not nullterminated\n");
    FUNC3(buf[4] == 0x1111, "Expected buf[4] = 0x1111, got %x\n", buf[4]);

    /* Overwrite part of an existing string */
    ret = FUNC4(buf, 4, 1, beefW);
    FUNC3(ret == 3, "Expected StrCatChainW to return 3, got %u\n", ret);
    FUNC3(buf[0] == 'D', "Expected buf[0] = 'D', got %x\n", buf[0]);
    FUNC3(buf[1] == 'B', "Expected buf[1] = 'B', got %x\n", buf[1]);
    FUNC3(buf[2] == 'e', "Expected buf[2] = 'e', got %x\n", buf[2]);
    FUNC3(!buf[3], "String is not nullterminated\n");
    FUNC3(buf[4] == 0x1111, "Expected buf[4] = 0x1111, got %x\n", buf[4]);

    /* Test appending to full buffer */
    FUNC2(buf, 0x11, sizeof(buf));
    FUNC1(buf, deadbeefW, sizeof(deadbeefW));
    FUNC1(buf + 9, deadW, sizeof(deadW));
    ret = FUNC4(buf, 9, 8, beefW);
    FUNC3(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");
    FUNC3(!FUNC0(buf + 9, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    /* Offset points at the end of the buffer */
    ret = FUNC4(buf, 9, 9, beefW);
    FUNC3(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");
    FUNC3(!FUNC0(buf + 9, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    /* Offset points outside of the buffer */
    ret = FUNC4(buf, 9, 10, beefW);
    FUNC3(ret == 10, "Expected StrCatChainW to return 10, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");
    FUNC3(!FUNC0(buf + 9, deadW, sizeof(deadW)), "Buffer contains wrong data\n");

    /* The same but without nullterminated string */
    FUNC1(buf, deadbeefW, sizeof(deadbeefW));
    ret = FUNC4(buf, 5, -1, deadW);
    FUNC3(ret == 8, "Expected StrCatChainW to return 8, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadbeefW, sizeof(deadbeefW)), "Buffer contains wrong data\n");

    ret = FUNC4(buf, 5, 5, deadW);
    FUNC3(ret == 4, "Expected StrCatChainW to return 4, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");
    FUNC3(buf[5] == 'e', "Expected buf[5] = 'e', got %x\n", buf[5]);

    ret = FUNC4(buf, 5, 6, deadW);
    FUNC3(ret == 6, "Expected StrCatChainW to return 6, got %u\n", ret);
    FUNC3(!FUNC0(buf, deadW, sizeof(deadW)), "Buffer contains wrong data\n");
    FUNC3(buf[5] == 'e', "Expected buf[5] = 'e', got %x\n", buf[5]);
}