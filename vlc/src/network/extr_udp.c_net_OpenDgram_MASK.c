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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct addrinfo {scalar_t__ ai_socktype; int ai_protocol; int ai_flags; scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int AI_IDN ; 
 int AI_NUMERICSERV ; 
 int AI_PASSIVE ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,unsigned int,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,unsigned int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,struct addrinfo*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_errno ; 
 int FUNC11 (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13( vlc_object_t *obj, const char *psz_bind, unsigned i_bind,
                   const char *psz_server, unsigned i_server, int protocol )
{
    if ((psz_server == NULL) || (psz_server[0] == '\0'))
        return FUNC6 (obj, psz_bind, i_bind, protocol);

    FUNC3 (obj, "net: connecting to [%s]:%u from [%s]:%u",
             psz_server, i_server, psz_bind, i_bind);

    struct addrinfo hints = {
        .ai_socktype = SOCK_DGRAM,
        .ai_protocol = protocol,
        .ai_flags = AI_NUMERICSERV | AI_IDN,
    }, *loc, *rem;

    int val = FUNC11 (psz_server, i_server, &hints, &rem);
    if (val)
    {
        FUNC4 (obj, "cannot resolve %s port %u : %s", psz_server, i_server,
                 FUNC2 (val));
        return -1;
    }

    hints.ai_flags |= AI_PASSIVE;
    val = FUNC11 (psz_bind, i_bind, &hints, &loc);
    if (val)
    {
        FUNC4 (obj, "cannot resolve %s port %u : %s", psz_bind, i_bind,
                 FUNC2 (val));
        FUNC1 (rem);
        return -1;
    }

    val = -1;
    for (struct addrinfo *ptr = loc; ptr != NULL; ptr = ptr->ai_next)
    {
        int fd = FUNC9 (obj, ptr->ai_family, ptr->ai_socktype,
                             ptr->ai_protocol);
        if (fd == -1)
            continue; // usually, address family not supported

        fd = FUNC7( obj, fd, ptr );
        if( fd == -1 )
            continue;

        for (struct addrinfo *ptr2 = rem; ptr2 != NULL; ptr2 = ptr2->ai_next)
        {
            if ((ptr2->ai_family != ptr->ai_family)
             || (ptr2->ai_socktype != ptr->ai_socktype)
             || (ptr2->ai_protocol != ptr->ai_protocol))
                continue;

            if (FUNC8 (ptr->ai_addr, ptr->ai_addrlen)
              ? FUNC10 (obj, fd,
                                     ptr2->ai_addr, ptr2->ai_addrlen,
                                     ptr->ai_addr, ptr->ai_addrlen)
              : FUNC0 (fd, ptr2->ai_addr, ptr2->ai_addrlen))
            {
                FUNC4 (obj, "cannot connect to %s port %u: %s",
                         psz_server, i_server, FUNC12(net_errno));
                continue;
            }
            val = fd;
            break;
        }

        if (val != -1)
            break;

        FUNC5 (fd);
    }

    FUNC1 (rem);
    FUNC1 (loc);
    return val;
}