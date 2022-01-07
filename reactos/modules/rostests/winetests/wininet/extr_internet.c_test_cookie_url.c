
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int long_url ;
typedef int bufw ;
typedef int buf ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 char* ERROR_INVALID_PARAMETER ;
 char* ERROR_NO_MORE_ITEMS ;
 char* GetLastError () ;
 int InternetGetCookieA (char*,int *,char*,int*) ;
 int InternetGetCookieW (char const*,int *,char*,int*) ;
 int InternetSetCookieA (char*,int *,char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,char*) ;
 int pInternetGetCookieExA (char*,int *,char*,int*,int ,int *) ;
 int pInternetGetCookieExW (char const*,int *,char*,int*,int ,int *) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void test_cookie_url(void)
{
    char long_url[5000] = "http://long.url.test.com/", *p;
    WCHAR bufw[512];
    char buf[512];
    DWORD len;
    BOOL res;

    static const WCHAR about_blankW[] = {'a','b','o','u','t',':','b','l','a','n','k',0};

    len = sizeof(buf);
    res = InternetGetCookieA("about:blank", ((void*)0), buf, &len);
    ok(!res && GetLastError() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeA failed: %u, expected ERROR_INVALID_PARAMETER\n", GetLastError());

    len = sizeof(bufw)/sizeof(*bufw);
    res = InternetGetCookieW(about_blankW, ((void*)0), bufw, &len);
    ok(!res && GetLastError() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeW failed: %u, expected ERROR_INVALID_PARAMETER\n", GetLastError());

    len = sizeof(buf);
    res = pInternetGetCookieExA("about:blank", ((void*)0), buf, &len, 0, ((void*)0));
    ok(!res && GetLastError() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeExA failed: %u, expected ERROR_INVALID_PARAMETER\n", GetLastError());

    len = sizeof(bufw)/sizeof(*bufw);
    res = pInternetGetCookieExW(about_blankW, ((void*)0), bufw, &len, 0, ((void*)0));
    ok(!res && GetLastError() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeExW failed: %u, expected ERROR_INVALID_PARAMETER\n", GetLastError());

    p = long_url + strlen(long_url);
    memset(p, 'x', long_url+sizeof(long_url)-p);
    p += (long_url+sizeof(long_url)-p) - 3;
    p[0] = '/';
    p[2] = 0;
    res = InternetSetCookieA(long_url, ((void*)0), "A=B");
    ok(res, "InternetSetCookieA failed: %u\n", GetLastError());

    len = sizeof(buf);
    res = InternetGetCookieA(long_url, ((void*)0), buf, &len);
    ok(res, "InternetGetCookieA failed: %u\n", GetLastError());
    ok(!strcmp(buf, "A=B"), "buf = %s\n", buf);

    len = sizeof(buf);
    res = InternetGetCookieA("http://long.url.test.com/", ((void*)0), buf, &len);
    ok(!res && GetLastError() == ERROR_NO_MORE_ITEMS, "InternetGetCookieA failed: %u\n", GetLastError());
}
