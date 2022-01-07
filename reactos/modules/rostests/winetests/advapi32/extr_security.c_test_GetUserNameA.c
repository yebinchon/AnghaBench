
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
 int GetUserNameA (char*,int*) ;
 int SetLastError (int) ;
 int TRUE ;
 int UNLEN ;
 scalar_t__ broken (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetUserNameA(void)
{
    char buffer[UNLEN + 1], filler[UNLEN + 1];
    DWORD required_len, buffer_len;
    BOOL ret;


    if (0)
    {
        SetLastError(0xdeadbeef);
        GetUserNameA(((void*)0), ((void*)0));
    }

    SetLastError(0xdeadbeef);
    required_len = 0;
    ret = GetUserNameA(((void*)0), &required_len);
    ok(ret == FALSE, "GetUserNameA returned %d\n", ret);
    ok(required_len != 0, "Outputted buffer length was %u\n", required_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    required_len = 1;
    ret = GetUserNameA(((void*)0), &required_len);
    ok(ret == FALSE, "GetUserNameA returned %d\n", ret);
    ok(required_len != 0 && required_len != 1, "Outputted buffer length was %u\n", required_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());


    if (0)
    {
        SetLastError(0xdeadbeef);
        required_len = UNLEN + 1;
        GetUserNameA(((void*)0), &required_len);

        SetLastError(0xdeadbeef);
        GetUserNameA(buffer, ((void*)0));
    }

    memset(filler, 'x', sizeof(filler));



    SetLastError(0xdeadbeef);
    memcpy(buffer, filler, sizeof(filler));
    required_len = 0;
    ret = GetUserNameA(buffer, &required_len);
    ok(ret == FALSE, "GetUserNameA returned %d\n", ret);
    ok(!memcmp(buffer, filler, sizeof(filler)), "Output buffer was altered\n");
    ok(required_len != 0, "Outputted buffer length was %u\n", required_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    memcpy(buffer, filler, sizeof(filler));
    buffer_len = required_len;
    ret = GetUserNameA(buffer, &buffer_len);
    ok(ret == TRUE, "GetUserNameA returned %d, last error %u\n", ret, GetLastError());
    ok(memcmp(buffer, filler, sizeof(filler)) != 0, "Output buffer was untouched\n");
    ok(buffer_len == required_len ||
       broken(buffer_len == required_len / sizeof(WCHAR)),
       "Outputted buffer length was %u\n", buffer_len);



    SetLastError(0xdeadbeef);
    memcpy(buffer, filler, sizeof(filler));
    buffer_len--;
    ret = GetUserNameA(buffer, &buffer_len);
    ok(ret == FALSE, "GetUserNameA returned %d\n", ret);
    ok(!memcmp(buffer, filler, sizeof(filler)), "Output buffer was untouched\n");
    ok(buffer_len == required_len, "Outputted buffer length was %u\n", buffer_len);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Last error was %u\n", GetLastError());
}
