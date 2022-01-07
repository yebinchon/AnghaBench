
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ COOKIE_STATE_ACCEPT ;
 scalar_t__ COOKIE_STATE_REJECT ;
 char* ERROR_INVALID_OPERATION ;
 char* ERROR_NO_MORE_ITEMS ;
 char* GetLastError () ;
 int GetModuleHandleA (char*) ;
 int GetProcAddress (int ,char*) ;
 int INTERNET_COOKIE_HTTPONLY ;
 int InternetGetCookieA (char*,int *,char*,scalar_t__*) ;
 int InternetGetCookieExA (char*,int *,char*,scalar_t__*,int ,int *) ;
 int InternetSetCookieA (char*,int *,char*) ;
 scalar_t__ InternetSetCookieExA (char*,int *,char*,int ,int ) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_cookie_attrs(void)
{
    char buf[100];
    DWORD size, state;
    BOOL ret;

    if(!GetProcAddress(GetModuleHandleA("wininet.dll"), "DeleteWpadCacheForNetworks")) {
        win_skip("Skipping cookie attributes tests. Too old IE.\n");
        return;
    }

    ret = InternetSetCookieA("http://cookie.attrs.com/bar", ((void*)0), "A=data; httponly");
    ok(!ret && GetLastError() == ERROR_INVALID_OPERATION, "InternetSetCookie returned: %x (%u)\n", ret, GetLastError());

    SetLastError(0xdeadbeef);
    state = InternetSetCookieExA("http://cookie.attrs.com/bar", ((void*)0), "A=data; httponly", 0, 0);
    ok(state == COOKIE_STATE_REJECT && GetLastError() == ERROR_INVALID_OPERATION,
       "InternetSetCookieEx returned: %x (%u)\n", ret, GetLastError());

    size = sizeof(buf);
    ret = InternetGetCookieExA("http://cookie.attrs.com/", ((void*)0), buf, &size, INTERNET_COOKIE_HTTPONLY, ((void*)0));
    ok(!ret && GetLastError() == ERROR_NO_MORE_ITEMS, "InternetGetCookieEx returned: %x (%u)\n", ret, GetLastError());

    state = InternetSetCookieExA("http://cookie.attrs.com/bar",((void*)0),"A=data; httponly", INTERNET_COOKIE_HTTPONLY, 0);
    ok(state == COOKIE_STATE_ACCEPT,"InternetSetCookieEx failed: %u\n", GetLastError());

    size = sizeof(buf);
    ret = InternetGetCookieA("http://cookie.attrs.com/", ((void*)0), buf, &size);
    ok(!ret && GetLastError() == ERROR_NO_MORE_ITEMS, "InternetGetCookie returned: %x (%u)\n", ret, GetLastError());

    size = sizeof(buf);
    ret = InternetGetCookieExA("http://cookie.attrs.com/", ((void*)0), buf, &size, 0, ((void*)0));
    ok(!ret && GetLastError() == ERROR_NO_MORE_ITEMS, "InternetGetCookieEx returned: %x (%u)\n", ret, GetLastError());

    size = sizeof(buf);
    ret = InternetGetCookieExA("http://cookie.attrs.com/", ((void*)0), buf, &size, INTERNET_COOKIE_HTTPONLY, ((void*)0));
    ok(ret, "InternetGetCookieEx failed: %u\n", GetLastError());
    ok(!strcmp(buf, "A=data"), "data = %s\n", buf);


    ret = InternetSetCookieA("http://cookie.attrs.com/bar", ((void*)0), "A=test");
    ok(!ret && GetLastError() == ERROR_INVALID_OPERATION, "InternetSetCookie returned: %x (%u)\n", ret, GetLastError());

    SetLastError(0xdeadbeef);
    state = InternetSetCookieExA("http://cookie.attrs.com/bar", ((void*)0), "A=data", 0, 0);
    ok(state == COOKIE_STATE_REJECT && GetLastError() == ERROR_INVALID_OPERATION,
       "InternetSetCookieEx returned: %x (%u)\n", ret, GetLastError());

    size = sizeof(buf);
    ret = InternetGetCookieExA("http://cookie.attrs.com/", ((void*)0), buf, &size, INTERNET_COOKIE_HTTPONLY, ((void*)0));
    ok(ret, "InternetGetCookieEx failed: %u\n", GetLastError());
    ok(!strcmp(buf, "A=data"), "data = %s\n", buf);

}
