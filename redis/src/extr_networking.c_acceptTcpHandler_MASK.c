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
typedef  int /*<<< orphan*/  cip ;
typedef  void aeEventLoop ;
struct TYPE_2__ {int /*<<< orphan*/  neterr; } ;

/* Variables and functions */
 int ANET_ERR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int MAX_ACCEPTS_PER_CALL ; 
 int NET_IP_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 

void FUNC5(aeEventLoop *el, int fd, void *privdata, int mask) {
    int cport, cfd, max = MAX_ACCEPTS_PER_CALL;
    char cip[NET_IP_STR_LEN];
    FUNC0(el);
    FUNC0(mask);
    FUNC0(privdata);

    while(max--) {
        cfd = FUNC2(server.neterr, fd, cip, sizeof(cip), &cport);
        if (cfd == ANET_ERR) {
            if (errno != EWOULDBLOCK)
                FUNC4(LL_WARNING,
                    "Accepting client connection: %s", server.neterr);
            return;
        }
        FUNC4(LL_VERBOSE,"Accepted %s:%d", cip, cport);
        FUNC1(FUNC3(cfd),0,cip);
    }
}