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
typedef  int /*<<< orphan*/  vlc_http_cookie_jar_t ;
struct vlc_http_msg {char* authority; int /*<<< orphan*/ * path; int /*<<< orphan*/ * scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vlc_http_msg*,char*,char*,char*) ; 

int FUNC7(struct vlc_http_msg *m,
                             vlc_http_cookie_jar_t *jar)
{
    char *host, *cookies;
    int val = 0;
    bool secure;

    if (m->scheme == NULL || m->authority == NULL || m->path == NULL)
    {
        errno = EINVAL;
        return -1;
    }

    if (!FUNC1(m->scheme, "https"))
        secure = true;
    else if (!FUNC1(m->scheme, "http"))
        secure = false;
    else
        return 0;

    if (jar == NULL)
        return 0;

    if (m->authority[0] == '[')
        host = FUNC3(m->authority + 1, FUNC2(m->authority + 1, "]"));
    else
        host = FUNC3(m->authority, FUNC2(m->authority, ":"));
    if (FUNC4(host == NULL))
        return -1;

    cookies = FUNC5(jar, secure, host, m->path);
    FUNC0(host);

    if (cookies != NULL)
    {
        val = FUNC6(m, "Cookie", "%s", cookies);
        FUNC0(cookies);
    }
    return val;
}