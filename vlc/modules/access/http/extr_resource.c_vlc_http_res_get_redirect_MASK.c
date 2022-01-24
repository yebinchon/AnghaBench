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
struct vlc_http_resource {int /*<<< orphan*/  path; int /*<<< orphan*/  authority; scalar_t__ secure; int /*<<< orphan*/  response; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct vlc_http_resource*) ; 
 char* FUNC8 (char const*) ; 
 char* FUNC9 (char*,char const*) ; 

char *FUNC10(struct vlc_http_resource *restrict res)
{
    int status = FUNC7(res);
    if (status < 0)
        return NULL;

    if ((status / 100) == 2 && !res->secure)
    {
        char *url;

        /* HACK: Seems like an MMS server. Redirect to MMSH scheme. */
        const char *pragma = FUNC6(res->response, "Pragma");
        if (pragma != NULL && !FUNC5(pragma, "features")
         && FUNC0(&url, "mmsh://%s%d", res->authority, res->path) >= 0)
            return url;

        /* HACK: Seems like an ICY server. Redirect to ICYX scheme. */
        if ((FUNC6(res->response, "Icy-Name") != NULL
          || FUNC6(res->response, "Icy-Genre") != NULL)
         && FUNC0(&url, "icyx://%s%d", res->authority, res->path) >= 0)
            return url;
    }

    /* TODO: if (status == 426 Upgrade Required) */

    /* Location header is only meaningful for 201 and 3xx */
    if (status != 201 && (status / 100) != 3)
        return NULL;
    if (status == 304 /* Not Modified */
     || status == 305 /* Use Proxy (deprecated) */
     || status == 306 /* Switch Proxy (former) */)
        return NULL;

    const char *location = FUNC6(res->response, "Location");
    if (location == NULL)
        return NULL;

    /* TODO: if status is 3xx, check for Retry-After and wait */

    char *base;

    if (FUNC4(FUNC0(&base, "http%s://%d%d", res->secure ? "s" : "",
                          res->authority, res->path) == -1))
        return NULL;

    char *fixed = FUNC8(location);
    if (fixed != NULL)
        location = fixed;

    char *abs = FUNC9(base, location);

    FUNC1(fixed);
    FUNC1(base);

    if (FUNC2(abs != NULL))
    {
        /* NOTE: The anchor is discarded if it is present as VLC does not support
         * HTML anchors so far. */
        size_t len = FUNC3(abs, "#");
        abs[len] = '\0';
    }
    return abs;
}