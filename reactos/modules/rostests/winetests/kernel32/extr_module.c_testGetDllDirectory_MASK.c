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
typedef  int /*<<< orphan*/  dll_directories ;
typedef  char WCHAR ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int MAX_PATH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    CHAR bufferA[MAX_PATH];
    WCHAR bufferW[MAX_PATH];
    DWORD length, ret;
    int i;
    static const char *dll_directories[] =
    {
        "",
        "C:\\Some\\Path",
        "C:\\Some\\Path\\",
        "Q:\\A\\Long\\Path with spaces that\\probably\\doesn't exist!",
    };
    const int test_count = sizeof(dll_directories) / sizeof(dll_directories[0]);

    if (!&pGetDllDirectoryA || !&pGetDllDirectoryW)
    {
        FUNC9("GetDllDirectory not available\n");
        return;
    }
    if (!&pSetDllDirectoryA)
    {
        FUNC9("SetDllDirectoryA not available\n");
        return;
    }

    for (i = 0; i < test_count; i++)
    {
        length = FUNC8(dll_directories[i]);
        if (!FUNC5(dll_directories[i]))
        {
            FUNC6("i=%d, SetDllDirectoryA failed\n", i);
            continue;
        }

        /* no buffer, determine length */
        ret = FUNC3(0, NULL);
        FUNC2(ret == length + 1, "Expected %u, got %u\n", length + 1, ret);

        ret = FUNC4(0, NULL);
        FUNC2(ret == length + 1, "Expected %u, got %u\n", length + 1, ret);

        /* buffer of exactly the right size */
        bufferA[length] = 'A';
        bufferA[length + 1] = 'A';
        ret = FUNC3(length + 1, bufferA);
        FUNC2(ret == length || FUNC0(ret + 1 == length) /* win8 */,
           "i=%d, Expected %u(+1), got %u\n", i, length, ret);
        FUNC2(bufferA[length + 1] == 'A', "i=%d, Buffer overflow\n", i);
        FUNC2(FUNC7(bufferA, dll_directories[i]) == 0, "i=%d, Wrong path returned: '%s'\n", i, bufferA);

        bufferW[length] = 'A';
        bufferW[length + 1] = 'A';
        ret = FUNC4(length + 1, bufferW);
        FUNC2(ret == length, "i=%d, Expected %u, got %u\n", i, length, ret);
        FUNC2(bufferW[length + 1] == 'A', "i=%d, Buffer overflow\n", i);
        FUNC2(FUNC1(dll_directories[i], bufferW, length, length),
           "i=%d, Wrong path returned: %s\n", i, FUNC10(bufferW));

        /* Zero size buffer. The buffer may or may not be terminated depending
         * on the Windows version and whether the A or W API is called. */
        bufferA[0] = 'A';
        ret = FUNC3(0, bufferA);
        FUNC2(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);

        bufferW[0] = 'A';
        ret = FUNC4(0, bufferW);
        FUNC2(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        FUNC2(bufferW[0] == 0 || /* XP, 2003 */
           FUNC0(bufferW[0] == 'A'), "i=%d, Buffer overflow\n", i);

        /* buffer just one too short */
        bufferA[0] = 'A';
        ret = FUNC3(length, bufferA);
        FUNC2(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        if (length != 0)
            FUNC2(bufferA[0] == 0, "i=%d, Buffer not null terminated\n", i);

        bufferW[0] = 'A';
        ret = FUNC4(length, bufferW);
        FUNC2(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        FUNC2(bufferW[0] == 0 || /* XP, 2003 */
           FUNC0(bufferW[0] == 'A'), "i=%d, Buffer overflow\n", i);

        if (0)
        {
            /* crashes on win8 */
            /* no buffer, but too short length */
            ret = FUNC3(length, NULL);
            FUNC2(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);

            ret = FUNC4(length, NULL);
            FUNC2(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        }
    }

    /* unset whatever we did so following tests won't be affected */
    FUNC5(NULL);
}