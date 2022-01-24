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
typedef  int /*<<< orphan*/  vlc_tls_client_t ;
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int FUNC4 (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const* const*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct addrinfo const*,int) ; 

vlc_tls_t *FUNC9(vlc_tls_client_t *creds, const char *name,
                                 unsigned port, const char *service,
                                 const char *const *alpn, char **alp)
{
    struct addrinfo hints =
    {
        .ai_socktype = SOCK_STREAM,
        .ai_protocol = IPPROTO_TCP,
    }, *res;

    FUNC2(creds, "resolving %s ...", name);

    int val = FUNC4(name, port, &hints, &res);
    if (val != 0)
    {   /* TODO: C locale for gai_strerror() */
        FUNC3(creds, "cannot resolve %s port %u: %s", name, port,
                FUNC1(val));
        return NULL;
    }

    for (const struct addrinfo *p = res; p != NULL; p = p->ai_next)
    {
        vlc_tls_t *tcp = FUNC8(p, true);
        if (tcp == NULL)
        {
            FUNC3(creds, "socket error: %s", FUNC5(errno));
            continue;
        }

        vlc_tls_t *tls = FUNC6(creds, tcp, name, service,
                                                     alpn, alp);
        if (tls != NULL)
        {   /* Success! */
            FUNC0(res);
            return tls;
        }

        FUNC3(creds, "connection error: %s", FUNC5(errno));
        FUNC7(tcp);
    }

    /* Failure! */
    FUNC0(res);
    return NULL;
}