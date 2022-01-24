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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int MAX_CNAME ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*,...) ; 

__attribute__((used)) static inline void FUNC6(int fd, char *identifier)
{
    /* Set the CNAME Identifier as host@ip:port and fallback to hostname if needed */
    char hostname[MAX_CNAME];
    struct sockaddr_storage peer_sockaddr;
    int name_length = 0;
    socklen_t peer_socklen = 0;
    int ret_hostname = FUNC0(hostname, MAX_CNAME);
    if (ret_hostname == -1)
        FUNC5(hostname, MAX_CNAME, "UnknownHost");
    int ret_sockname = FUNC1(fd, (struct sockaddr *)&peer_sockaddr, &peer_socklen);
    if (ret_sockname == 0)
    {
        struct sockaddr *peer = (struct sockaddr *)&peer_sockaddr;
        if (peer->sa_family == AF_INET) {
            struct sockaddr_in *xin = (void*)peer;
            name_length = FUNC5(identifier, MAX_CNAME, "%s@%s:%u", hostname,
                            FUNC2(xin->sin_addr), FUNC4(xin->sin_port));
            if (name_length >= MAX_CNAME)
                identifier[MAX_CNAME-1] = 0;
        } else if (peer->sa_family == AF_INET6) {
            struct sockaddr_in6 *xin6 = (void*)peer;
            char str[INET6_ADDRSTRLEN];
            FUNC3(xin6->sin6_family, &xin6->sin6_addr, str, sizeof(struct in6_addr));
            name_length = FUNC5(identifier, MAX_CNAME, "%s@%s:%u", hostname,
                            str, FUNC4(xin6->sin6_port));
            if (name_length >= MAX_CNAME)
                identifier[MAX_CNAME-1] = 0;
        }
    }
    if (name_length == 0)
    {
        name_length = FUNC5(identifier, MAX_CNAME, "%s", hostname);
        if (name_length >= MAX_CNAME)
            identifier[MAX_CNAME-1] = 0;
    }
}