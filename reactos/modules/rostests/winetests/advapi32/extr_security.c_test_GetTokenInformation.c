
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int is_app_container ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 scalar_t__ ERROR_INVALID_FUNCTION ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 int GetTokenInformation (int ,int ,int*,int,int*) ;
 int MAXIMUM_ALLOWED ;
 int OpenProcessToken (int ,int ,int *) ;
 int TokenIsAppContainer ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_GetTokenInformation(void)
{
    DWORD is_app_container, size;
    HANDLE token;
    BOOL ret;

    ret = OpenProcessToken(GetCurrentProcess(), MAXIMUM_ALLOWED, &token);
    ok(ret, "OpenProcessToken failed: %u\n", GetLastError());

    size = 0;
    is_app_container = 0xdeadbeef;
    ret = GetTokenInformation(token, TokenIsAppContainer, &is_app_container,
                              sizeof(is_app_container), &size);
    ok(ret || broken(GetLastError() == ERROR_INVALID_PARAMETER ||
                     GetLastError() == ERROR_INVALID_FUNCTION),
       "GetTokenInformation failed: %u\n", GetLastError());
    if(ret) {
        ok(size == sizeof(is_app_container), "size = %u\n", size);
        ok(!is_app_container, "is_app_container = %x\n", is_app_container);
    }

    CloseHandle(token);
}
