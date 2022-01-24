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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MUI_FULL_LANGUAGE ; 
 int MUI_LANGUAGE_ID ; 
 int MUI_LANGUAGE_NAME ; 
 int MUI_MACHINE_LANGUAGE_SETTINGS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    BOOL ret;
    ULONG count, size, size_id, size_name, size_buffer;
    WCHAR *buffer;


    if (!&pGetUserPreferredUILanguages)
    {
        FUNC10("GetUserPreferredUILanguages is not available.\n");
        return;
    }

    count = 0xdeadbeef;
    size = 0;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_FULL_LANGUAGE, &count, NULL, &size);
    FUNC7(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    FUNC7(ERROR_INVALID_PARAMETER == FUNC0(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    count = 0xdeadbeef;
    size = 0;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_ID | MUI_FULL_LANGUAGE, &count, NULL, &size);
    FUNC7(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    FUNC7(ERROR_INVALID_PARAMETER == FUNC0(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    count = 0xdeadbeef;
    size = 0;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_ID | MUI_MACHINE_LANGUAGE_SETTINGS, &count, NULL, &size);
    FUNC7(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    FUNC7(ERROR_INVALID_PARAMETER == FUNC0(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    count = 0xdeadbeef;
    size = 1;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_ID, &count, NULL, &size);
    FUNC7(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    FUNC7(ERROR_INVALID_PARAMETER == FUNC0(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", FUNC0());

    count = 0xdeadbeef;
    size_id = 0;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_ID, &count, NULL, &size_id);
    FUNC7(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    FUNC7(count, "Expected count > 0\n");
    FUNC7(size_id  % 5 == 1, "Expected size (%d) %% 5 == 1\n", size_id);

    count = 0xdeadbeef;
    size_name = 0;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_NAME, &count, NULL, &size_name);
    FUNC7(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    FUNC7(count, "Expected count > 0\n");
    FUNC7(size_name % 6 == 1, "Expected size (%d) %% 6 == 1\n", size_name);

    size_buffer = FUNC5(size_id, size_name);
    if(!size_buffer)
    {
        FUNC9("No valid buffer size\n");
        return;
    }

    buffer = FUNC2(FUNC1(), 0, size_buffer * sizeof(WCHAR));

    count = 0xdeadbeef;
    size = size_buffer;
    FUNC6(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    FUNC4(0xdeadbeef);
    ret = FUNC8(0, &count, buffer, &size);
    FUNC7(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    FUNC7(count, "Expected count > 0\n");
    FUNC7(size % 6 == 1, "Expected size (%d) %% 6 == 1\n", size);
    if (ret && size % 6 == 1)
        FUNC7(!buffer[size -2] && !buffer[size -1],
           "Expected last two WCHARs being empty, got 0x%x 0x%x\n",
           buffer[size -2], buffer[size -1]);

    count = 0xdeadbeef;
    size = size_buffer;
    FUNC6(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_ID, &count, buffer, &size);
    FUNC7(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    FUNC7(count, "Expected count > 0\n");
    FUNC7(size % 5 == 1, "Expected size (%d) %% 5 == 1\n", size);
    if (ret && size % 5 == 1)
        FUNC7(!buffer[size -2] && !buffer[size -1],
           "Expected last two WCHARs being empty, got 0x%x 0x%x\n",
           buffer[size -2], buffer[size -1]);

    count = 0xdeadbeef;
    size = size_buffer;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_NAME, &count, buffer, &size);
    FUNC7(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    FUNC7(count, "Expected count > 0\n");
    FUNC7(size % 6 == 1, "Expected size (%d) %% 6 == 1\n", size);
    if (ret && size % 5 == 1)
        FUNC7(!buffer[size -2] && !buffer[size -1],
           "Expected last two WCHARs being empty, got 0x%x 0x%x\n",
           buffer[size -2], buffer[size -1]);

    count = 0xdeadbeef;
    size = 1;
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_ID, &count, buffer, &size);
    FUNC7(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    FUNC7(ERROR_INSUFFICIENT_BUFFER == FUNC0(),
       "Expected error ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC0());

    count = 0xdeadbeef;
    size = size_id -1;
    FUNC6(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    FUNC4(0xdeadbeef);
    ret = FUNC8(MUI_LANGUAGE_ID, &count, buffer, &size);
    FUNC7(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    FUNC7(ERROR_INSUFFICIENT_BUFFER == FUNC0(),
       "Expected error ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC0());

    count = 0xdeadbeef;
    size = size_id -2;
    FUNC6(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    FUNC4(0xdeadbeef);
    ret = FUNC8(0, &count, buffer, &size);
    FUNC7(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    FUNC7(ERROR_INSUFFICIENT_BUFFER == FUNC0(),
       "Expected error ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC0());

    FUNC3(FUNC1(), 0, buffer);
}