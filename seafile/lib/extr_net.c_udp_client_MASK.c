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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 struct sockaddr* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

evutil_socket_t
FUNC8 (const char *host, const char *serv,
            struct sockaddr **saptr, socklen_t *lenp)
{
	evutil_socket_t sockfd;
    int n;
	struct addrinfo	hints, *res, *ressave;

	FUNC6 (&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;

	if ((n = FUNC3(host, serv, &hints, &res)) != 0) {
        FUNC0 ("udp_client error for %s, %s: %s",
                       host, serv, FUNC2(n));
        return -1;
    }
	ressave = res;

	do {
		sockfd = FUNC7(res->ai_family, res->ai_socktype, res->ai_protocol);
		if (sockfd >= 0)
			break;		/* success */
	} while ( (res = res->ai_next) != NULL);

	if (res == NULL) {	/* errno set from final socket() */
		FUNC0 ("udp_client error for %s, %s", host, serv);
        FUNC1 (ressave);
        return -1;
    }

	*saptr = FUNC4(res->ai_addrlen);
	FUNC5(*saptr, res->ai_addr, res->ai_addrlen);
	*lenp = res->ai_addrlen;

	FUNC1(ressave);

	return (sockfd);
}