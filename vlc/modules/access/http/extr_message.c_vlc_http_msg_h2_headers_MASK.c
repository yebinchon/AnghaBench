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
struct vlc_http_msg {unsigned long status; int /*<<< orphan*/ * method; int /*<<< orphan*/ * path; int /*<<< orphan*/ * authority; int /*<<< orphan*/ * scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 void* FUNC1 (char const*) ; 
 unsigned long FUNC2 (char const*,char**,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vlc_http_msg*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC6 (int /*<<< orphan*/ ) ; 

struct vlc_http_msg *FUNC7(unsigned n,
                                             const char *const hdrs[][2])
{
    struct vlc_http_msg *m = FUNC6(0);
    if (FUNC3(m == NULL))
        return NULL;

    for (unsigned i = 0; i < n; i++)
    {
        const char *name = hdrs[i][0];
        const char *value = hdrs[i][1];

        /* NOTE: HPACK always returns lower-case names, so strcmp() is fine. */
        if (!FUNC0(name, ":status"))
        {
            char *end;
            unsigned long status = FUNC2(value, &end, 10);

            if (m->status != 0 || status > 999 || *end != '\0')
                goto error; /* Not a three decimal digits status! */

            m->status = status;
            continue;
        }

        if (!FUNC0(name, ":method"))
        {
            if (m->method != NULL)
                goto error;

            m->method = FUNC1(value);
            if (FUNC3(m->method == NULL))
                goto error;

            m->status = -1; /* this is a request */
            continue;
        }

        if (!FUNC0(name, ":scheme"))
        {
            if (m->scheme != NULL)
                goto error;

            m->scheme = FUNC1(value);
            if (FUNC3(m->scheme == NULL))
                goto error;
            continue;
        }

        if (!FUNC0(name, ":authority"))
        {
            if (m->authority != NULL)
                goto error;

            m->authority = FUNC1(value);
            if (FUNC3(m->authority == NULL))
                goto error;
            continue;
        }

        if (!FUNC0(name, ":path"))
        {
            if (m->path != NULL)
                goto error;

            m->path = FUNC1(value);
            if (FUNC3(m->path == NULL))
                goto error;
            continue;
        }

        if (FUNC4(m, name, "%s", value))
            goto error;
    }

    if ((m->status < 0) == (m->method == NULL))
    {   /* Must be either a request or response. Not both, not neither. */
error:
        FUNC5(m);
        m = NULL;
    }
    return m;
}