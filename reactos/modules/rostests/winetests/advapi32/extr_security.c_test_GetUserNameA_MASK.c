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
typedef  int /*<<< orphan*/  filler ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_INSUFFICIENT_BUFFER ; 
 int FALSE ; 
 int FUNC0 () ; 
 int FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TRUE ; 
 int UNLEN ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    char buffer[UNLEN + 1], filler[UNLEN + 1];
    DWORD required_len, buffer_len;
    BOOL ret;

    /* Test crashes on Windows. */
    if (0)
    {
        FUNC2(0xdeadbeef);
        FUNC1(NULL, NULL);
    }

    FUNC2(0xdeadbeef);
    required_len = 0;
    ret = FUNC1(NULL, &required_len);
    FUNC7(ret == FALSE, "GetUserNameA returned %d\n", ret);
    FUNC7(required_len != 0, "Outputted buffer length was %u\n", required_len);
    FUNC7(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", FUNC0());

    FUNC2(0xdeadbeef);
    required_len = 1;
    ret = FUNC1(NULL, &required_len);
    FUNC7(ret == FALSE, "GetUserNameA returned %d\n", ret);
    FUNC7(required_len != 0 && required_len != 1, "Outputted buffer length was %u\n", required_len);
    FUNC7(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", FUNC0());

    /* Tests crashes on Windows. */
    if (0)
    {
        FUNC2(0xdeadbeef);
        required_len = UNLEN + 1;
        FUNC1(NULL, &required_len);

        FUNC2(0xdeadbeef);
        FUNC1(buffer, NULL);
    }

    FUNC6(filler, 'x', sizeof(filler));

    /* Note that GetUserNameA on XP and newer outputs the number of bytes
     * required for a Unicode string, which affects a test in the next block. */
    FUNC2(0xdeadbeef);
    FUNC5(buffer, filler, sizeof(filler));
    required_len = 0;
    ret = FUNC1(buffer, &required_len);
    FUNC7(ret == FALSE, "GetUserNameA returned %d\n", ret);
    FUNC7(!FUNC4(buffer, filler, sizeof(filler)), "Output buffer was altered\n");
    FUNC7(required_len != 0, "Outputted buffer length was %u\n", required_len);
    FUNC7(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", FUNC0());

    FUNC2(0xdeadbeef);
    FUNC5(buffer, filler, sizeof(filler));
    buffer_len = required_len;
    ret = FUNC1(buffer, &buffer_len);
    FUNC7(ret == TRUE, "GetUserNameA returned %d, last error %u\n", ret, FUNC0());
    FUNC7(FUNC4(buffer, filler, sizeof(filler)) != 0, "Output buffer was untouched\n");
    FUNC7(buffer_len == required_len ||
       FUNC3(buffer_len == required_len / sizeof(WCHAR)), /* XP+ */
       "Outputted buffer length was %u\n", buffer_len);

    /* Use the reported buffer size from the last GetUserNameA call and pass
     * a length that is one less than the required value. */
    FUNC2(0xdeadbeef);
    FUNC5(buffer, filler, sizeof(filler));
    buffer_len--;
    ret = FUNC1(buffer, &buffer_len);
    FUNC7(ret == FALSE, "GetUserNameA returned %d\n", ret);
    FUNC7(!FUNC4(buffer, filler, sizeof(filler)), "Output buffer was untouched\n");
    FUNC7(buffer_len == required_len, "Outputted buffer length was %u\n", buffer_len);
    FUNC7(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", FUNC0());
}