#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_4__ {int port; int cport; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ clusterNode ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int CLUSTER_NODE_HANDSHAKE ; 
 int CLUSTER_NODE_MEET ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int NET_IP_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC7(char *ip, int port, int cport) {
    clusterNode *n;
    char norm_ip[NET_IP_STR_LEN];
    struct sockaddr_storage sa;

    /* IP sanity check */
    if (FUNC4(AF_INET,ip,
            &(((struct sockaddr_in *)&sa)->sin_addr)))
    {
        sa.ss_family = AF_INET;
    } else if (FUNC4(AF_INET6,ip,
            &(((struct sockaddr_in6 *)&sa)->sin6_addr)))
    {
        sa.ss_family = AF_INET6;
    } else {
        errno = EINVAL;
        return 0;
    }

    /* Port sanity check */
    if (port <= 0 || port > 65535 || cport <= 0 || cport > 65535) {
        errno = EINVAL;
        return 0;
    }

    /* Set norm_ip as the normalized string representation of the node
     * IP address. */
    FUNC6(norm_ip,0,NET_IP_STR_LEN);
    if (sa.ss_family == AF_INET)
        FUNC3(AF_INET,
            (void*)&(((struct sockaddr_in *)&sa)->sin_addr),
            norm_ip,NET_IP_STR_LEN);
    else
        FUNC3(AF_INET6,
            (void*)&(((struct sockaddr_in6 *)&sa)->sin6_addr),
            norm_ip,NET_IP_STR_LEN);

    if (FUNC1(norm_ip,port,cport)) {
        errno = EAGAIN;
        return 0;
    }

    /* Add the node with a random address (NULL as first argument to
     * createClusterNode()). Everything will be fixed during the
     * handshake. */
    n = FUNC2(NULL,CLUSTER_NODE_HANDSHAKE|CLUSTER_NODE_MEET);
    FUNC5(n->ip,norm_ip,sizeof(n->ip));
    n->port = port;
    n->cport = cport;
    FUNC0(n);
    return 1;
}