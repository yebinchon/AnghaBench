#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int string_len; int /*<<< orphan*/  cookies; scalar_t__ cnt; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ cookie_set_t ;
typedef  int /*<<< orphan*/  cookieW ;
typedef  char WCHAR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTERNET_COOKIE_HTTPONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cookie_cs ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

DWORD FUNC8(const WCHAR *host, const WCHAR *path, WCHAR **ret)
{
    cookie_set_t cookie_set = {0};
    DWORD res;

    static const WCHAR cookieW[] = {'C','o','o','k','i','e',':',' '};

    FUNC0(&cookie_cs);

    res = FUNC3(FUNC7(host), FUNC7(path), INTERNET_COOKIE_HTTPONLY, &cookie_set);
    if(res != ERROR_SUCCESS) {
        FUNC1(&cookie_cs);
        return res;
    }

    if(cookie_set.cnt) {
        WCHAR *header, *ptr;

        ptr = header = FUNC4(sizeof(cookieW) + (cookie_set.string_len + 3 /* crlf0 */) * sizeof(WCHAR));
        if(header) {
            FUNC6(ptr, cookieW, sizeof(cookieW));
            ptr += sizeof(cookieW)/sizeof(*cookieW);

            FUNC2(&cookie_set, ptr);
            FUNC5(cookie_set.cookies);
            ptr += cookie_set.string_len;

            *ptr++ = '\r';
            *ptr++ = '\n';
            *ptr++ = 0;

            *ret = header;
        }else {
            res = ERROR_NOT_ENOUGH_MEMORY;
        }
    }else {
        *ret = NULL;
    }

    FUNC1(&cookie_cs);
    return res;
}