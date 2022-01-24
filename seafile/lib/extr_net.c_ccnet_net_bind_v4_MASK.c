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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  on ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (struct sockaddr*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC10 (int /*<<< orphan*/ ) ; 

evutil_socket_t
FUNC11 (const char *ipaddr, int *port)
{
    evutil_socket_t sockfd;
    struct sockaddr_in addr;
    int on = 1;
        
    sockfd = FUNC9 (AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) {
        FUNC1("create socket failed: %s\n", FUNC10(errno));
        FUNC2(-1);
    }

    FUNC6 (&addr, 0, sizeof (struct sockaddr_in));
    addr.sin_family = AF_INET;
    if (FUNC5(ipaddr, &addr.sin_addr) == 0) {
        FUNC1 ("Bad ip address %s\n", ipaddr);
        return -1;
    }
    addr.sin_port = FUNC4 (*port);

    if (FUNC7(sockfd, SOL_SOCKET, SO_REUSEADDR, (char *)&on, sizeof(on)) < 0)
    {
        FUNC1 ("setsockopt of SO_REUSEADDR error: %s\n",
                       FUNC10(errno));
        return -1;
    }

    if ( FUNC0(sockfd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        FUNC1 ("Bind error: %s\n", FUNC10 (errno));
        return -1;
    }


    if (*port == 0) {
        struct sockaddr_storage ss;
        socklen_t len;

        len = sizeof(ss);
        if (FUNC3(sockfd, (struct sockaddr *)&ss, &len) < 0) {
            FUNC1 ("getsockname error: %s\n", FUNC10(errno));
            return -1;
        }
        *port = FUNC8 ((struct sockaddr *)&ss);
    }

    return sockfd;
}