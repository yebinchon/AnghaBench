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
struct TYPE_4__ {char const* psz_host; char const* psz_username; char const* psz_password; char* psz_path; int /*<<< orphan*/ * psz_option; int /*<<< orphan*/  i_port; int /*<<< orphan*/ * psz_protocol; } ;
typedef  TYPE_1__ vlc_url_t ;
struct vlc_http_resource_cbs {int dummy; } ;
struct vlc_http_resource {int secure; int negotiate; int failure; int /*<<< orphan*/ * path; int /*<<< orphan*/ * authority; int /*<<< orphan*/ * host; struct vlc_http_mgr* manager; int /*<<< orphan*/ * referrer; int /*<<< orphan*/ * agent; int /*<<< orphan*/ * password; int /*<<< orphan*/ * username; int /*<<< orphan*/  port; int /*<<< orphan*/ * response; struct vlc_http_resource_cbs const* cbs; } ;
struct vlc_http_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ **,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_http_resource*) ; 

int FUNC8(struct vlc_http_resource *restrict res,
                      const struct vlc_http_resource_cbs *cbs,
                      struct vlc_http_mgr *mgr,
                      const char *uri, const char *ua, const char *ref)
{
    vlc_url_t url;
    bool secure;

    if (FUNC4(&url, uri))
        goto error;
    if (url.psz_protocol == NULL || url.psz_host == NULL)
    {
        errno = EINVAL;
        goto error;
    }

    if (!FUNC5(url.psz_protocol, "https"))
        secure = true;
    else if (!FUNC5(url.psz_protocol, "http"))
        secure = false;
    else
    {
        errno = ENOTSUP;
        goto error;
    }

    res->cbs = cbs;
    res->response = NULL;
    res->secure = secure;
    res->negotiate = true;
    res->failure = false;
    res->host = FUNC1(url.psz_host);
    res->port = url.i_port;
    res->authority = FUNC6(url.psz_host, url.i_port);
    res->username = (url.psz_username != NULL) ? FUNC1(url.psz_username)
                                               : NULL;
    res->password = (url.psz_password != NULL) ? FUNC1(url.psz_password)
                                               : NULL;
    res->agent = (ua != NULL) ? FUNC1(ua) : NULL;
    res->referrer = (ref != NULL) ? FUNC1(ref) : NULL;

    const char *path = url.psz_path;
    if (path == NULL)
        path = "/";

    if (url.psz_option != NULL)
    {
        if (FUNC0(&res->path, "%s?%s", path, url.psz_option) == -1)
            res->path = NULL;
    }
    else
        res->path = FUNC1(path);

    FUNC3(&url);
    res->manager = mgr;

    if (FUNC2(res->host == NULL || res->authority == NULL
              || res->path == NULL))
    {
        FUNC7(res);
        return -1;
    }
    return 0;
error:
    FUNC3(&url);
    return -1;
}