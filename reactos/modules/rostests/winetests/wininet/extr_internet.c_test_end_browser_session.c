
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ GetLastError () ;
 int INTERNET_OPTION_END_BROWSER_SESSION ;
 int InternetGetCookieA (char*,int *,int *,scalar_t__*) ;
 int InternetSetCookieA (char*,int *,char*) ;
 int InternetSetOptionA (int *,int ,int *,int ) ;
 int TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_end_browser_session(void)
{
    DWORD len;
    BOOL ret;

    ret = InternetSetCookieA("http://www.example.com/test_end", ((void*)0), "A=B");
    ok(ret == TRUE, "InternetSetCookie failed\n");

    len = 1024;
    ret = InternetGetCookieA("http://www.example.com/test_end", ((void*)0), ((void*)0), &len);
    ok(ret == TRUE,"InternetGetCookie failed\n");
    ok(len != 0, "len = 0\n");

    ret = InternetSetOptionA(((void*)0), INTERNET_OPTION_END_BROWSER_SESSION, ((void*)0), 0);
    ok(ret, "InternetSetOption(INTERNET_OPTION_END_BROWSER_SESSION) failed: %u\n", GetLastError());

    len = 1024;
    ret = InternetGetCookieA("http://www.example.com/test_end", ((void*)0), ((void*)0), &len);
    ok(!ret && GetLastError() == ERROR_NO_MORE_ITEMS, "InternetGetCookie returned %x (%u)\n", ret, GetLastError());
    ok(!len, "len = %u\n", len);
}
