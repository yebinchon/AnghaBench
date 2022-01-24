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
typedef  int /*<<< orphan*/  vlc_tls_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int FUNC5 (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct addrinfo const*,int) ; 

vlc_tls_t *FUNC8(vlc_object_t *obj, const char *name,
                                 unsigned port)
{
    struct addrinfo hints =
    {
        .ai_socktype = SOCK_STREAM,
        .ai_protocol = IPPROTO_TCP,
    }, *res;

    FUNC0(name != NULL);
    FUNC3(obj, "resolving %s ...", name);

    int val = FUNC5(name, port, &hints, &res);
    if (val != 0)
    {   /* TODO: C locale for gai_strerror() */
        FUNC4(obj, "cannot resolve %s port %u: %s", name, port,
                FUNC2(val));
        return NULL;
    }

    FUNC3(obj, "connecting to %s port %u ...", name, port);

    /* TODO: implement RFC8305 */
    for (const struct addrinfo *p = res; p != NULL; p = p->ai_next)
    {
        vlc_tls_t *tls = FUNC7(p, false);
        if (tls == NULL)
        {
            FUNC4(obj, "connection error: %s", FUNC6(errno));
            continue;
        }

        FUNC1(res);
        return tls;
    }

    FUNC1(res);
    return NULL;
}