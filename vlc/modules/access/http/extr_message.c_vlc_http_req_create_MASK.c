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
struct vlc_http_msg {int status; int /*<<< orphan*/ * path; int /*<<< orphan*/ * authority; int /*<<< orphan*/ * scheme; int /*<<< orphan*/ * method; int /*<<< orphan*/ * payload; int /*<<< orphan*/ * headers; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vlc_http_msg* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_http_msg*) ; 

struct vlc_http_msg *
FUNC5(const char *method, const char *scheme,
                    const char *authority, const char *path)
{
    struct vlc_http_msg *m = FUNC1(sizeof (*m));
    if (FUNC3(m == NULL))
        return NULL;

    FUNC0(method != NULL);
    m->status = -1;
    m->method = FUNC2(method);
    m->scheme = (scheme != NULL) ? FUNC2(scheme) : NULL;
    m->authority = (authority != NULL) ? FUNC2(authority) : NULL;
    m->path = (path != NULL) ? FUNC2(path) : NULL;
    m->count = 0;
    m->headers = NULL;
    m->payload = NULL;

    if (FUNC3(m->method == NULL
              || (scheme != NULL && m->scheme == NULL)
              || (authority != NULL && m->authority == NULL)
              || (path != NULL && m->path == NULL)))
    {
        FUNC4(m);
        m = NULL;
    }
    return m;
}