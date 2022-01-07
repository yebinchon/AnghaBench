
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w_string ;
typedef int c_string ;
typedef char WCHAR ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int CP_ACP ;
 int CP_SYMBOL ;
 int CP_UTF7 ;
 int CP_UTF8 ;
 scalar_t__ ERROR_INVALID_FLAGS ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 scalar_t__ MultiByteToWideChar (int,int,char*,size_t,char*,size_t) ;
 int SetLastError (int) ;
 scalar_t__ WideCharToMultiByte (int,int,char*,size_t,char*,size_t,char*,int *) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_other_invalid_parameters(void)
{
    char c_string[] = "Hello World";
    size_t c_string_len = sizeof(c_string);
    WCHAR w_string[] = {'H','e','l','l','o',' ','W','o','r','l','d',0};
    size_t w_string_len = sizeof(w_string) / sizeof(WCHAR);
    BOOL used;
    INT len;


    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_ACP, 0x100, w_string, -1, c_string, c_string_len, ((void*)0), ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_FLAGS, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_ACP, 0x800, w_string, -1, c_string, c_string_len, ((void*)0), ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_FLAGS, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = MultiByteToWideChar(CP_ACP, 0x10, c_string, -1, w_string, w_string_len);
    ok(len == 0 && GetLastError() == ERROR_INVALID_FLAGS, "len=%d error=%x\n", len, GetLastError());



    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(0xdeadbeef, 0x100, w_string, w_string_len, c_string, c_string_len, ((void*)0), ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = MultiByteToWideChar(0xdeadbeef, 0x10, c_string, c_string_len, w_string, w_string_len);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());



    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_ACP, 0x100, ((void*)0), -1, c_string, c_string_len, ((void*)0), ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = MultiByteToWideChar(CP_ACP, 0x10, ((void*)0), -1, w_string, w_string_len);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());



    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_ACP, 0, w_string, 0, c_string, c_string_len, ((void*)0), ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = MultiByteToWideChar(CP_ACP, 0, c_string, 0, w_string, w_string_len);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());



    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_ACP, 0, w_string, w_string_len, ((void*)0), c_string_len, ((void*)0), ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = MultiByteToWideChar(CP_ACP, 0, c_string, c_string_len, ((void*)0), w_string_len);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());




    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_UTF7, 0, w_string, w_string_len, c_string, c_string_len, c_string, ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_UTF8, 0, w_string, w_string_len, c_string, c_string_len, c_string, ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_SYMBOL, 0, w_string, w_string_len, c_string, c_string_len, c_string, ((void*)0));
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());




    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_UTF7, 0, w_string, w_string_len, c_string, c_string_len, ((void*)0), &used);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_UTF8, 0, w_string, w_string_len, c_string, c_string_len, ((void*)0), &used);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());

    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_SYMBOL, 0, w_string, w_string_len, c_string, c_string_len, ((void*)0), &used);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());






    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_UTF7, 1, w_string, w_string_len, c_string, c_string_len, ((void*)0), &used);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());


    SetLastError(0xdeadbeef);
    len = WideCharToMultiByte(CP_UTF8, 0x100, w_string, w_string_len, c_string, c_string_len, ((void*)0), &used);
    ok(len == 0 && GetLastError() == ERROR_INVALID_PARAMETER, "len=%d error=%x\n", len, GetLastError());
}
