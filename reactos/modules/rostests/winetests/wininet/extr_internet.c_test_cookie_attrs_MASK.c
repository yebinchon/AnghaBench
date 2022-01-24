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
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ COOKIE_STATE_ACCEPT ; 
 scalar_t__ COOKIE_STATE_REJECT ; 
 char* ERROR_INVALID_OPERATION ; 
 char* ERROR_NO_MORE_ITEMS ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  INTERNET_COOKIE_HTTPONLY ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    char buf[100];
    DWORD size, state;
    BOOL ret;

    if(!FUNC2(FUNC1("wininet.dll"), "DeleteWpadCacheForNetworks")) {
        FUNC10("Skipping cookie attributes tests. Too old IE.\n");
        return;
    }

    ret = FUNC5("http://cookie.attrs.com/bar", NULL, "A=data; httponly");
    FUNC8(!ret && FUNC0() == ERROR_INVALID_OPERATION, "InternetSetCookie returned: %x (%u)\n", ret, FUNC0());

    FUNC7(0xdeadbeef);
    state = FUNC6("http://cookie.attrs.com/bar", NULL, "A=data; httponly", 0, 0);
    FUNC8(state == COOKIE_STATE_REJECT && FUNC0() == ERROR_INVALID_OPERATION,
       "InternetSetCookieEx returned: %x (%u)\n", ret, FUNC0());

    size = sizeof(buf);
    ret = FUNC4("http://cookie.attrs.com/", NULL, buf, &size, INTERNET_COOKIE_HTTPONLY, NULL);
    FUNC8(!ret && FUNC0() == ERROR_NO_MORE_ITEMS, "InternetGetCookieEx returned: %x (%u)\n", ret, FUNC0());

    state = FUNC6("http://cookie.attrs.com/bar",NULL,"A=data; httponly", INTERNET_COOKIE_HTTPONLY, 0);
    FUNC8(state == COOKIE_STATE_ACCEPT,"InternetSetCookieEx failed: %u\n", FUNC0());

    size = sizeof(buf);
    ret = FUNC3("http://cookie.attrs.com/", NULL, buf, &size);
    FUNC8(!ret && FUNC0() == ERROR_NO_MORE_ITEMS, "InternetGetCookie returned: %x (%u)\n", ret, FUNC0());

    size = sizeof(buf);
    ret = FUNC4("http://cookie.attrs.com/", NULL, buf, &size, 0, NULL);
    FUNC8(!ret && FUNC0() == ERROR_NO_MORE_ITEMS, "InternetGetCookieEx returned: %x (%u)\n", ret, FUNC0());

    size = sizeof(buf);
    ret = FUNC4("http://cookie.attrs.com/", NULL, buf, &size, INTERNET_COOKIE_HTTPONLY, NULL);
    FUNC8(ret, "InternetGetCookieEx failed: %u\n", FUNC0());
    FUNC8(!FUNC9(buf, "A=data"), "data = %s\n", buf);

    /* Try to override httponly cookie with non-httponly one */
    ret = FUNC5("http://cookie.attrs.com/bar", NULL, "A=test");
    FUNC8(!ret && FUNC0() == ERROR_INVALID_OPERATION, "InternetSetCookie returned: %x (%u)\n", ret, FUNC0());

    FUNC7(0xdeadbeef);
    state = FUNC6("http://cookie.attrs.com/bar", NULL, "A=data", 0, 0);
    FUNC8(state == COOKIE_STATE_REJECT && FUNC0() == ERROR_INVALID_OPERATION,
       "InternetSetCookieEx returned: %x (%u)\n", ret, FUNC0());

    size = sizeof(buf);
    ret = FUNC4("http://cookie.attrs.com/", NULL, buf, &size, INTERNET_COOKIE_HTTPONLY, NULL);
    FUNC8(ret, "InternetGetCookieEx failed: %u\n", FUNC0());
    FUNC8(!FUNC9(buf, "A=data"), "data = %s\n", buf);

}