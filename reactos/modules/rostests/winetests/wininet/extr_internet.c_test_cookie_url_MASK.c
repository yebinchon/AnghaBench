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
typedef  int /*<<< orphan*/  long_url ;
typedef  int /*<<< orphan*/  bufw ;
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 char* ERROR_INVALID_PARAMETER ; 
 char* ERROR_NO_MORE_ITEMS ; 
 char* FUNC0 () ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    char long_url[5000] = "http://long.url.test.com/", *p;
    WCHAR bufw[512];
    char buf[512];
    DWORD len;
    BOOL res;

    static const WCHAR about_blankW[] = {'a','b','o','u','t',':','b','l','a','n','k',0};

    len = sizeof(buf);
    res = FUNC1("about:blank", NULL, buf, &len);
    FUNC5(!res && FUNC0() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeA failed: %u, expected ERROR_INVALID_PARAMETER\n", FUNC0());

    len = sizeof(bufw)/sizeof(*bufw);
    res = FUNC2(about_blankW, NULL, bufw, &len);
    FUNC5(!res && FUNC0() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeW failed: %u, expected ERROR_INVALID_PARAMETER\n", FUNC0());

    len = sizeof(buf);
    res = FUNC6("about:blank", NULL, buf, &len, 0, NULL);
    FUNC5(!res && FUNC0() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeExA failed: %u, expected ERROR_INVALID_PARAMETER\n", FUNC0());

    len = sizeof(bufw)/sizeof(*bufw);
    res = FUNC7(about_blankW, NULL, bufw, &len, 0, NULL);
    FUNC5(!res && FUNC0() == ERROR_INVALID_PARAMETER,
       "InternetGetCookeExW failed: %u, expected ERROR_INVALID_PARAMETER\n", FUNC0());

    p = long_url + FUNC9(long_url);
    FUNC4(p, 'x', long_url+sizeof(long_url)-p);
    p += (long_url+sizeof(long_url)-p) - 3;
    p[0] = '/';
    p[2] = 0;
    res = FUNC3(long_url, NULL, "A=B");
    FUNC5(res, "InternetSetCookieA failed: %u\n", FUNC0());

    len = sizeof(buf);
    res = FUNC1(long_url, NULL, buf, &len);
    FUNC5(res, "InternetGetCookieA failed: %u\n", FUNC0());
    FUNC5(!FUNC8(buf, "A=B"), "buf = %s\n", buf);

    len = sizeof(buf);
    res = FUNC1("http://long.url.test.com/", NULL, buf, &len);
    FUNC5(!res && FUNC0() == ERROR_NO_MORE_ITEMS, "InternetGetCookieA failed: %u\n", FUNC0());
}