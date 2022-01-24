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
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_family; int ai_socktype; int ai_protocol; size_t ai_addrlen; int /*<<< orphan*/ * ai_canonname; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/ * ai_next; scalar_t__ ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

__attribute__((used)) static struct addrinfo *
FUNC4 (int af, int type, int proto,
              const struct sockaddr *addr, size_t addrlen,
              const char *canonname)
{
    struct addrinfo *res;

    res = (struct addrinfo *)FUNC1 (sizeof (struct addrinfo));
    if (res != NULL)
    {
        res->ai_flags = 0;
        res->ai_family = af;
        res->ai_socktype = type;
        res->ai_protocol = proto;
        res->ai_addrlen = addrlen;
        res->ai_addr = FUNC1 (addrlen);
        res->ai_canonname = NULL;
        res->ai_next = NULL;

        if (res->ai_addr != NULL)
        {
            FUNC2 (res->ai_addr, addr, addrlen);

            if (canonname != NULL)
            {
                res->ai_canonname = FUNC3 (canonname);
                if (res->ai_canonname != NULL)
                    return res; /* success ! */
            }
            else
                return res;
        }
    }
    /* failsafe */
    FUNC0 (res);
    return NULL;
}