#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* psz_protocol; char* psz_username; char* psz_password; unsigned long i_port; char* psz_path; char* psz_option; char* psz_fragment; char* psz_buffer; int /*<<< orphan*/ * psz_host; int /*<<< orphan*/ * psz_pathbuffer; } ;
typedef  TYPE_1__ vlc_url_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 unsigned long UINT_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char,int) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char) ; 
 unsigned long FUNC7 (char*,char**,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 char* FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(vlc_url_t *restrict url, const char *str)
{
    url->psz_protocol = NULL;
    url->psz_username = NULL;
    url->psz_password = NULL;
    url->psz_host = NULL;
    url->i_port = 0;
    url->psz_path = NULL;
    url->psz_option = NULL;
    url->psz_fragment = NULL;
    url->psz_buffer = NULL;
    url->psz_pathbuffer = NULL;

    if (str == NULL)
    {
        errno = EINVAL;
        return -1;
    }

    char *buf = FUNC10(str);
    if (FUNC8(buf == NULL))
        return -1;
    url->psz_buffer = buf;

    char *cur = buf, *next;
    int ret = 0;

    /* URI scheme */
    next = buf;
    while (FUNC1(*next) || FUNC2 ("+-.", *next, 3) != NULL)
        next++;

    if (*next == ':')
    {
        *(next++) = '\0';
        url->psz_protocol = cur;
        cur = next;
    }

    /* Fragment */
    next = FUNC3(cur, '#');
    if (next != NULL)
    {
       *(next++) = '\0';
       if (FUNC11(next, "/?"))
           url->psz_fragment = next;
    }

    /* Query parameters */
    next = FUNC3(cur, '?');
    if (next != NULL)
    {
        *(next++) = '\0';
        url->psz_option = next;
    }

    /* Authority */
    if (FUNC5(cur, "//", 2) == 0)
    {
        cur += 2;

        /* Path */
        next = FUNC3(cur, '/');
        if (next != NULL)
        {
            *next = '\0'; /* temporary nul, reset to slash later */
            url->psz_path = next;
        }
        /*else
            url->psz_path = "/";*/

        /* User name */
        next = FUNC6(cur, '@');
        if (next != NULL)
        {
            *(next++) = '\0';
            url->psz_username = cur;
            cur = next;

            /* Password (obsolete) */
            next = FUNC3(url->psz_username, ':');
            if (next != NULL)
            {
                *(next++) = '\0';
                url->psz_password = next;
                FUNC12(url->psz_password);
            }
            FUNC12(url->psz_username);
        }

        /* Host name */
        if (*cur == '[' && (next = FUNC6(cur, ']')) != NULL)
        {   /* Try IPv6 numeral within brackets */
            *(next++) = '\0';
            url->psz_host = FUNC4(cur + 1);

            if (*next == ':')
                next++;
            else
                next = NULL;
        }
        else
        {
            next = FUNC3(cur, ':');
            if (next != NULL)
                *(next++) = '\0';

            const char *host = FUNC12(cur);
            url->psz_host = (host != NULL) ? FUNC9(host) : NULL;
        }

        if (url->psz_host == NULL)
            ret = -1;
        else
        if (!FUNC13(url->psz_host))
        {
            FUNC0(url->psz_host);
            url->psz_host = NULL;
            errno = EINVAL;
            ret = -1;
        }

        /* Port number */
        if (next != NULL && *next)
        {
            char* end;
            unsigned long port = FUNC7(next, &end, 10);

            if (FUNC3("0123456789", *next) == NULL || *end || port > UINT_MAX)
            {
                errno = EINVAL;
                ret = -1;
            }

            url->i_port = port;
        }

        if (url->psz_path != NULL)
            *url->psz_path = '/'; /* restore leading slash */
    }
    else
    {
        url->psz_path = cur;
    }

    return ret;
}