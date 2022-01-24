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
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  on ;
typedef  int evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*) ; 
 struct sockaddr* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

evutil_socket_t
FUNC9 (struct sockaddr *sasend, socklen_t salen)
{
    int                 ret;
    const int           on = 1;
    evutil_socket_t     recvfd;
    struct sockaddr    *sarecv;

    if ( (recvfd = FUNC7 (sasend->sa_family, SOCK_DGRAM, 0)) < 0) {
        FUNC1 ("Create multicast listen socket fails: %s\n",
                     FUNC8(errno));
        return -1;
    }
    ret = FUNC6(recvfd, SOL_SOCKET, SO_REUSEADDR, (char *)&on, sizeof(on));
    if (ret < 0)
        FUNC1("Failed to setsockopt SO_REUSEADDR\n");
    sarecv = FUNC3(salen);
    FUNC5(sarecv, sasend, salen);

    if (FUNC0(recvfd, sarecv, salen) < 0) {
        FUNC1 ("Bind multicast listen socket fails: %s\n",
                       FUNC8(errno));
        FUNC2 (sarecv);
        return -1;
    }
    FUNC2 (sarecv);

    if (FUNC4(recvfd, sasend, salen, NULL, 0) < 0) {
        FUNC1 ("mcast_join error: %s\n", FUNC8(errno));
        return -1;
    }

    return recvfd;
}