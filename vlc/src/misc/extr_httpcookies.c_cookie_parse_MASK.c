#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* psz_name; int b_host_only; int /*<<< orphan*/  b_secure; int /*<<< orphan*/ * psz_path; int /*<<< orphan*/ * psz_domain; int /*<<< orphan*/ * psz_value; } ;
typedef  TYPE_1__ http_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 TYPE_1__* FUNC5 (int) ; 
 char* FUNC6 (char const*,char,size_t) ; 
 size_t FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 void* FUNC9 (char const*,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static http_cookie_t *FUNC11(const char *value,
                                   const char *host, const char *path)
{
    http_cookie_t *cookie = FUNC5(sizeof (*cookie));
    if (FUNC10(cookie == NULL))
        return NULL;

    cookie->psz_domain = NULL;
    cookie->psz_path = NULL;

    /* Get the NAME=VALUE part of the Cookie */
    size_t value_length = FUNC7(value, ";");
    const char *p = FUNC6(value, '=', value_length);

    if (p != NULL)
    {
        cookie->psz_name = FUNC9(value, p - value);
        p++;
        cookie->psz_value = FUNC9(p, value_length - (p - value));
        if (FUNC10(cookie->psz_value == NULL))
            goto error;
    }
    else
    {
        cookie->psz_name = FUNC9(value, value_length);
        cookie->psz_value = NULL;
    }

    if (FUNC10(cookie->psz_name == NULL))
        goto error;

    /* Cookie name is a token; it cannot be empty. */
    if (cookie->psz_name[0] == '\0')
        goto error;

    /* Get domain */
    cookie->psz_domain = FUNC2(value);
    if (cookie->psz_domain == NULL)
    {
        cookie->psz_domain = FUNC8(host);
        if (FUNC10(cookie->psz_domain == NULL))
            goto error;

        cookie->b_host_only = true;
    }
    else
        cookie->b_host_only = false;

    /* Get path */
    cookie->psz_path = FUNC3(value);
    if (cookie->psz_path == NULL)
    {
        cookie->psz_path = FUNC0(path);
        if (FUNC10(cookie->psz_path == NULL))
            goto error;
    }

    /* Get secure flag */
    cookie->b_secure = FUNC4(value, "secure");

    return cookie;

error:
    FUNC1(cookie);
    return NULL;
}