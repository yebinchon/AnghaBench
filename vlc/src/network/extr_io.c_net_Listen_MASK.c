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
struct addrinfo {int ai_socktype; int ai_protocol; int ai_flags; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int AI_IDN ; 
 int AI_NUMERICSERV ; 
 int AI_PASSIVE ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int net_errno ; 
 scalar_t__ FUNC8 (int*,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ; 
 int FUNC11 (int) ; 

int *FUNC12 (vlc_object_t *p_this, const char *psz_host,
                 unsigned i_port, int type, int protocol)
{
    struct addrinfo hints = {
        .ai_socktype = type,
        .ai_protocol = protocol,
        .ai_flags = AI_PASSIVE | AI_NUMERICSERV | AI_IDN,
    }, *res;

    FUNC4 (p_this, "net: listening to %s port %u",
             (psz_host != NULL) ? psz_host : "*", i_port);

    int i_val = FUNC10 (psz_host, i_port, &hints, &res);
    if (i_val)
    {
        FUNC5 (p_this, "Cannot resolve %s port %u : %s",
                 (psz_host != NULL) ? psz_host : "", i_port,
                 FUNC2 (i_val));
        return NULL;
    }

    int *sockv = NULL;
    unsigned sockc = 0;

    for (struct addrinfo *ptr = res; ptr != NULL; ptr = ptr->ai_next)
    {
        int fd = FUNC7 (p_this, ptr->ai_family, ptr->ai_socktype,
                             ptr->ai_protocol);
        if (fd == -1)
        {
            FUNC4 (p_this, "socket error: %s", FUNC11(net_errno));
            continue;
        }

        /* Bind the socket */
        if (FUNC0 (fd, ptr->ai_addr, ptr->ai_addrlen))
        {
            int err = net_errno;
            FUNC6 (fd);
#if !defined(_WIN32)
            fd = FUNC9 (ptr->ai_family, ptr->ai_socktype,
                                ptr->ai_protocol,
                                ptr->ai_addr, ptr->ai_addrlen);
            if (fd != -1)
            {
                FUNC4 (p_this, "got socket %d from rootwrap", fd);
            }
            else
#endif
            {
                FUNC5 (p_this, "socket bind error: %s", FUNC11(err));
                continue;
            }
        }

        /* Listen */
        if (FUNC3(fd, INT_MAX))
        {
            FUNC5(p_this, "socket listen error: %s",
                    FUNC11(net_errno));
            FUNC6(fd);
            continue;
        }

        int *nsockv = (int *)FUNC8 (sockv, (sockc + 2) * sizeof (int));
        if (nsockv != NULL)
        {
            nsockv[sockc++] = fd;
            sockv = nsockv;
        }
        else
            FUNC6 (fd);
    }

    FUNC1 (res);

    if (sockv != NULL)
        sockv[sockc] = -1;

    return sockv;
}