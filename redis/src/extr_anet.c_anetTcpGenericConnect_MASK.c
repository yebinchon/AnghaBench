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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int ANET_CONNECT_BE_BINDING ; 
 int ANET_CONNECT_NONBLOCK ; 
 int ANET_ERR ; 
 scalar_t__ ANET_OK ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(char *err, const char *addr, int port,
                                 const char *source_addr, int flags)
{
    int s = ANET_ERR, rv;
    char portstr[6];  /* strlen("65535") + 1; */
    struct addrinfo hints, *servinfo, *bservinfo, *p, *b;

    FUNC10(portstr,sizeof(portstr),"%d",port);
    FUNC9(&hints,0,sizeof(hints));
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    if ((rv = FUNC8(addr,portstr,&hints,&servinfo)) != 0) {
        FUNC1(err, "%s", FUNC7(rv));
        return ANET_ERR;
    }
    for (p = servinfo; p != NULL; p = p->ai_next) {
        /* Try to create the socket and to connect it.
         * If we fail in the socket() call, or on connect(), we retry with
         * the next entry in servinfo. */
        if ((s = FUNC11(p->ai_family,p->ai_socktype,p->ai_protocol)) == -1)
            continue;
        if (FUNC2(err,s) == ANET_ERR) goto error;
        if (flags & ANET_CONNECT_NONBLOCK && FUNC0(err,s) != ANET_OK)
            goto error;
        if (source_addr) {
            int bound = 0;
            /* Using getaddrinfo saves us from self-determining IPv4 vs IPv6 */
            if ((rv = FUNC8(source_addr, NULL, &hints, &bservinfo)) != 0)
            {
                FUNC1(err, "%s", FUNC7(rv));
                goto error;
            }
            for (b = bservinfo; b != NULL; b = b->ai_next) {
                if (FUNC3(s,b->ai_addr,b->ai_addrlen) != -1) {
                    bound = 1;
                    break;
                }
            }
            FUNC6(bservinfo);
            if (!bound) {
                FUNC1(err, "bind: %s", FUNC12(errno));
                goto error;
            }
        }
        if (FUNC5(s,p->ai_addr,p->ai_addrlen) == -1) {
            /* If the socket is non-blocking, it is ok for connect() to
             * return an EINPROGRESS error here. */
            if (errno == EINPROGRESS && flags & ANET_CONNECT_NONBLOCK)
                goto end;
            FUNC4(s);
            s = ANET_ERR;
            continue;
        }

        /* If we ended an iteration of the for loop without errors, we
         * have a connected socket. Let's return to the caller. */
        goto end;
    }
    if (p == NULL)
        FUNC1(err, "creating socket: %s", FUNC12(errno));

error:
    if (s != ANET_ERR) {
        FUNC4(s);
        s = ANET_ERR;
    }

end:
    FUNC6(servinfo);

    /* Handle best effort binding: if a binding address was used, but it is
     * not possible to create a socket, try again without a binding address. */
    if (s == ANET_ERR && source_addr && (flags & ANET_CONNECT_BE_BINDING)) {
        return FUNC13(err,addr,port,NULL,flags);
    } else {
        return s;
    }
}