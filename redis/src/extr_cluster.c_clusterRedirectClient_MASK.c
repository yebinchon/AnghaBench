#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ clusterNode ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int CLUSTER_REDIR_ASK ; 
 int CLUSTER_REDIR_CROSS_SLOT ; 
 int CLUSTER_REDIR_DOWN_STATE ; 
 int CLUSTER_REDIR_DOWN_UNBOUND ; 
 int CLUSTER_REDIR_MOVED ; 
 int CLUSTER_REDIR_UNSTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(client *c, clusterNode *n, int hashslot, int error_code) {
    if (error_code == CLUSTER_REDIR_CROSS_SLOT) {
        FUNC0(c,FUNC3("-CROSSSLOT Keys in request don't hash to the same slot\r\n"));
    } else if (error_code == CLUSTER_REDIR_UNSTABLE) {
        /* The request spawns multiple keys in the same slot,
         * but the slot is not "stable" currently as there is
         * a migration or import in progress. */
        FUNC0(c,FUNC3("-TRYAGAIN Multiple keys request during rehashing of slot\r\n"));
    } else if (error_code == CLUSTER_REDIR_DOWN_STATE) {
        FUNC0(c,FUNC3("-CLUSTERDOWN The cluster is down\r\n"));
    } else if (error_code == CLUSTER_REDIR_DOWN_UNBOUND) {
        FUNC0(c,FUNC3("-CLUSTERDOWN Hash slot not served\r\n"));
    } else if (error_code == CLUSTER_REDIR_MOVED ||
               error_code == CLUSTER_REDIR_ASK)
    {
        FUNC0(c,FUNC1(FUNC2(),
            "-%s %d %s:%d\r\n",
            (error_code == CLUSTER_REDIR_ASK) ? "ASK" : "MOVED",
            hashslot,n->ip,n->port));
    } else {
        FUNC4("getNodeByQuery() unknown error.");
    }
}