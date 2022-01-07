
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filler ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 int GetLastError () ;
 int GetUserNameW (int *,int*) ;
 int SetLastError (int) ;
 int TRUE ;
 int UNLEN ;
 scalar_t__ broken (int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,char,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetUserNameW(void)
{
    WCHAR buffer[UNLEN + 1], filler[UNLEN + 1];
    DWORD required_len, buffer_len;
    BOOL ret;


    if (0)
    {
        SetLastError(0xdeadbeef);
        GetUserNameW(((void*)0), ((void*)0));
    }

    SetLastError(0xdeadbeef);
    required_len = 0;
    ret = GetUserNameW(((void*)0), &required_len);
    ok(ret == FALSE, "GetUserNameW returned %d\n", ret);
    ok(required_len != 0, "Outputted buffer length was %u\n", required_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    required_len = 1;
    ret = GetUserNameW(((void*)0), &required_len);
    ok(ret == FALSE, "GetUserNameW returned %d\n", ret);
    ok(required_len != 0 && required_len != 1, "Outputted buffer length was %u\n", required_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());


    if (0)
    {
        SetLastError(0xdeadbeef);
        required_len = UNLEN + 1;
        GetUserNameW(((void*)0), &required_len);

        SetLastError(0xdeadbeef);
        GetUserNameW(buffer, ((void*)0));
    }

    memset(filler, 'x', sizeof(filler));

    SetLastError(0xdeadbeef);
    memcpy(buffer, filler, sizeof(filler));
    required_len = 0;
    ret = GetUserNameW(buffer, &required_len);
    ok(ret == FALSE, "GetUserNameW returned %d\n", ret);
    ok(!memcmp(buffer, filler, sizeof(filler)), "Output buffer was altered\n");
    ok(required_len != 0, "Outputted buffer length was %u\n", required_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    memcpy(buffer, filler, sizeof(filler));
    buffer_len = required_len;
    ret = GetUserNameW(buffer, &buffer_len);
    ok(ret == TRUE, "GetUserNameW returned %d, last error %u\n", ret, GetLastError());
    ok(memcmp(buffer, filler, sizeof(filler)) != 0, "Output buffer was untouched\n");
    ok(buffer_len == required_len, "Outputted buffer length was %u\n", buffer_len);


    SetLastError(0xdeadbeef);
    memcpy(buffer, filler, sizeof(filler));
    buffer_len--;
    ret = GetUserNameW(buffer, &buffer_len);
    ok(ret == FALSE, "GetUserNameW returned %d\n", ret);
    ok(!memcmp(buffer, filler, sizeof(filler)) ||
       broken(memcmp(buffer, filler, sizeof(filler)) != 0),
       "Output buffer was altered\n");
    ok(buffer_len == required_len, "Outputted buffer length was %u\n", buffer_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());
}
