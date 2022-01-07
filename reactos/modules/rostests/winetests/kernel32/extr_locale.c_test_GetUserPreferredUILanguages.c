
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MUI_FULL_LANGUAGE ;
 int MUI_LANGUAGE_ID ;
 int MUI_LANGUAGE_NAME ;
 int MUI_MACHINE_LANGUAGE_SETTINGS ;
 int SetLastError (int) ;
 int max (int,int) ;
 int memset (int *,int,int) ;
 int ok (int,char*,...) ;
 int pGetUserPreferredUILanguages (int,int*,int *,int*) ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetUserPreferredUILanguages(void)
{
    BOOL ret;
    ULONG count, size, size_id, size_name, size_buffer;
    WCHAR *buffer;


    if (!pGetUserPreferredUILanguages)
    {
        win_skip("GetUserPreferredUILanguages is not available.\n");
        return;
    }

    count = 0xdeadbeef;
    size = 0;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_FULL_LANGUAGE, &count, ((void*)0), &size);
    ok(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    ok(ERROR_INVALID_PARAMETER == GetLastError(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    count = 0xdeadbeef;
    size = 0;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_ID | MUI_FULL_LANGUAGE, &count, ((void*)0), &size);
    ok(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    ok(ERROR_INVALID_PARAMETER == GetLastError(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    count = 0xdeadbeef;
    size = 0;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_ID | MUI_MACHINE_LANGUAGE_SETTINGS, &count, ((void*)0), &size);
    ok(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    ok(ERROR_INVALID_PARAMETER == GetLastError(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    count = 0xdeadbeef;
    size = 1;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_ID, &count, ((void*)0), &size);
    ok(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    ok(ERROR_INVALID_PARAMETER == GetLastError(),
       "Expected error ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    count = 0xdeadbeef;
    size_id = 0;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_ID, &count, ((void*)0), &size_id);
    ok(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    ok(count, "Expected count > 0\n");
    ok(size_id % 5 == 1, "Expected size (%d) %% 5 == 1\n", size_id);

    count = 0xdeadbeef;
    size_name = 0;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_NAME, &count, ((void*)0), &size_name);
    ok(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    ok(count, "Expected count > 0\n");
    ok(size_name % 6 == 1, "Expected size (%d) %% 6 == 1\n", size_name);

    size_buffer = max(size_id, size_name);
    if(!size_buffer)
    {
        skip("No valid buffer size\n");
        return;
    }

    buffer = HeapAlloc(GetProcessHeap(), 0, size_buffer * sizeof(WCHAR));

    count = 0xdeadbeef;
    size = size_buffer;
    memset(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(0, &count, buffer, &size);
    ok(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    ok(count, "Expected count > 0\n");
    ok(size % 6 == 1, "Expected size (%d) %% 6 == 1\n", size);
    if (ret && size % 6 == 1)
        ok(!buffer[size -2] && !buffer[size -1],
           "Expected last two WCHARs being empty, got 0x%x 0x%x\n",
           buffer[size -2], buffer[size -1]);

    count = 0xdeadbeef;
    size = size_buffer;
    memset(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_ID, &count, buffer, &size);
    ok(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    ok(count, "Expected count > 0\n");
    ok(size % 5 == 1, "Expected size (%d) %% 5 == 1\n", size);
    if (ret && size % 5 == 1)
        ok(!buffer[size -2] && !buffer[size -1],
           "Expected last two WCHARs being empty, got 0x%x 0x%x\n",
           buffer[size -2], buffer[size -1]);

    count = 0xdeadbeef;
    size = size_buffer;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_NAME, &count, buffer, &size);
    ok(ret, "Expected GetUserPreferredUILanguages to succeed\n");
    ok(count, "Expected count > 0\n");
    ok(size % 6 == 1, "Expected size (%d) %% 6 == 1\n", size);
    if (ret && size % 5 == 1)
        ok(!buffer[size -2] && !buffer[size -1],
           "Expected last two WCHARs being empty, got 0x%x 0x%x\n",
           buffer[size -2], buffer[size -1]);

    count = 0xdeadbeef;
    size = 1;
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_ID, &count, buffer, &size);
    ok(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    ok(ERROR_INSUFFICIENT_BUFFER == GetLastError(),
       "Expected error ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());

    count = 0xdeadbeef;
    size = size_id -1;
    memset(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(MUI_LANGUAGE_ID, &count, buffer, &size);
    ok(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    ok(ERROR_INSUFFICIENT_BUFFER == GetLastError(),
       "Expected error ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());

    count = 0xdeadbeef;
    size = size_id -2;
    memset(buffer, 0x5a, size_buffer * sizeof(WCHAR));
    SetLastError(0xdeadbeef);
    ret = pGetUserPreferredUILanguages(0, &count, buffer, &size);
    ok(!ret, "Expected GetUserPreferredUILanguages to fail\n");
    ok(ERROR_INSUFFICIENT_BUFFER == GetLastError(),
       "Expected error ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());

    HeapFree(GetProcessHeap(), 0, buffer);
}
