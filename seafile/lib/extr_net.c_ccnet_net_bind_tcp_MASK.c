#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int ai_addrlen; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; void* sin_family; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct sockaddr_in* ai_next; int /*<<< orphan*/  ai_flags; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; void* sin_family; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  sock ;
typedef  int /*<<< orphan*/  optval ;
typedef  int /*<<< orphan*/  on ;
typedef  int evutil_socket_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int const,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,struct sockaddr_in*,struct sockaddr_in**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

evutil_socket_t
FUNC15 (int port, int nonblock)
{
#ifndef WIN32
    int sockfd, n;
    struct addrinfo hints, *res, *ressave;
    char buf[10];
        
    FUNC10 (&hints, 0,sizeof (struct addrinfo));
    hints.ai_flags = AI_PASSIVE;
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    FUNC12 (buf, sizeof(buf), "%d", port);

    if ( (n = FUNC7(NULL, buf, &hints, &res) ) != 0) {
        FUNC1 ("getaddrinfo fails: %s\n", FUNC6(n));
        return -1;
    }

    ressave = res;
    
    do {
        int on = 1;

        sockfd = FUNC13(res->ai_family, res->ai_socktype, res->ai_protocol);
        if (sockfd < 0)
            continue;       /* error - try next one */

		if (FUNC11(sockfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0) {
			FUNC1 ("setsockopt of SO_REUSEADDR error\n");
            continue;
        }

        if (nonblock)
            sockfd = FUNC9 (sockfd);
        if (sockfd < 0)
            continue;       /* error - try next one */

        if (FUNC0(sockfd, res->ai_addr, res->ai_addrlen) == 0)
            break;          /* success */

        FUNC2(sockfd);      /* bind error - close and try next one */
    } while ( (res = res->ai_next) != NULL);

    FUNC5 (ressave);

    if (res == NULL) {
        FUNC1 ("bind fails: %s\n", FUNC14(errno));
        return -1;
    }

    return sockfd;
#else

    evutil_socket_t s;
    struct sockaddr_in sock;
    const int type = AF_INET;
#if defined( SO_REUSEADDR ) || defined( SO_REUSEPORT )
    int optval;
#endif

    if ((s = createSocket(type, nonblock)) < 0)
        return -1;

    optval = 1;
    setsockopt (s, SOL_SOCKET, SO_REUSEADDR, (char*)&optval, sizeof(optval));

    memset(&sock, 0, sizeof(sock));
    sock.sin_family      = AF_INET;
    sock.sin_addr.s_addr = INADDR_ANY;
    sock.sin_port        = htons(port);

    if ( bind(s, (struct sockaddr *)&sock, sizeof(struct sockaddr_in)) < 0)
    {
        ccnet_warning ("bind fails: %s\n", strerror(errno));
        evutil_closesocket (s);
        return -1;
    }
    if (nonblock)
        s = makeSocketNonBlocking (s);
     
    return s;
#endif
}