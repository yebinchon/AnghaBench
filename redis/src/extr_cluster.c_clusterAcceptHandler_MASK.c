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
typedef  int /*<<< orphan*/  connection ;
typedef  int /*<<< orphan*/  cip ;
typedef  void aeEventLoop ;
struct TYPE_2__ {scalar_t__ tls_cluster; int /*<<< orphan*/  neterr; scalar_t__ loading; int /*<<< orphan*/ * masterhost; } ;

/* Variables and functions */
 int ANET_ERR ; 
 scalar_t__ C_ERR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int MAX_CLUSTER_ACCEPTS_PER_CALL ; 
 int NET_IP_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char*,int,int*) ; 
 int /*<<< orphan*/  clusterConnAcceptHandler ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 

void FUNC10(aeEventLoop *el, int fd, void *privdata, int mask) {
    int cport, cfd;
    int max = MAX_CLUSTER_ACCEPTS_PER_CALL;
    char cip[NET_IP_STR_LEN];
    FUNC0(el);
    FUNC0(mask);
    FUNC0(privdata);

    /* If the server is starting up, don't accept cluster connections:
     * UPDATE messages may interact with the database content. */
    if (server.masterhost == NULL && server.loading) return;

    while(max--) {
        cfd = FUNC1(server.neterr, fd, cip, sizeof(cip), &cport);
        if (cfd == ANET_ERR) {
            if (errno != EWOULDBLOCK)
                FUNC9(LL_VERBOSE,
                    "Error accepting cluster node: %s", server.neterr);
            return;
        }

        connection *conn = server.tls_cluster ? FUNC5(cfd,1) : FUNC4(cfd);
        FUNC8(conn);
        FUNC6(conn);

        /* Use non-blocking I/O for cluster messages. */
        FUNC9(LL_VERBOSE,"Accepting cluster node connection from %s:%d", cip, cport);

        /* Accept the connection now.  connAccept() may call our handler directly
         * or schedule it for later depending on connection implementation.
         */
        if (FUNC2(conn, clusterConnAcceptHandler) == C_ERR) {
            FUNC9(LL_VERBOSE,
                    "Error accepting cluster node connection: %s",
                    FUNC7(conn));
            FUNC3(conn);
            return;
        }
    }
}