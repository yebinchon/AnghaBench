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
struct vlc_memstream {size_t length; char* ptr; } ;
struct vlc_http_msg {unsigned int count; scalar_t__** headers; int /*<<< orphan*/  status; scalar_t__ authority; scalar_t__ path; scalar_t__ scheme; int /*<<< orphan*/  method; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_memstream*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_memstream*,char*) ; 

char *FUNC4(const struct vlc_http_msg *m, size_t *restrict lenp,
                          bool proxied)
{
    struct vlc_memstream stream;

    FUNC1(&stream);

    if (m->status < 0)
    {
        FUNC2(&stream, "%s ", m->method);
        if (proxied)
            FUNC2(&stream, "%s://%s", m->scheme, m->authority);
        FUNC2(&stream, "%s HTTP/1.1\r\nHost: %s\r\n",
                             m->path ? m->path : m->authority, m->authority);
    }
    else
        FUNC2(&stream, "HTTP/1.1 %03hd .\r\n", m->status);

    for (unsigned i = 0; i < m->count; i++)
        FUNC2(&stream, "%s: %s\r\n",
                             m->headers[i][0], m->headers[i][1]);

    FUNC3(&stream, "\r\n");

    if (FUNC0(&stream))
        return NULL;

    if (lenp != NULL)
        *lenp = stream.length;
    return stream.ptr;
}