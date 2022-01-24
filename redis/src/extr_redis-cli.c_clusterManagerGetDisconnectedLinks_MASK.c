#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* str; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  clusterManagerNode ;
struct TYPE_9__ {int handshaking; scalar_t__ connected; void* node_addr; void* node_name; } ;
typedef  TYPE_2__ clusterManagerLink ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 void* FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*,char*) ; 
 TYPE_2__* FUNC8 (int) ; 

__attribute__((used)) static list *FUNC9(clusterManagerNode *node) {
    list *links = NULL;
    redisReply *reply = FUNC0(node, "CLUSTER NODES");
    if (!FUNC1(node, reply, NULL)) goto cleanup;
    links = FUNC4();
    char *lines = reply->str, *p, *line;
    while ((p = FUNC7(lines, "\n")) != NULL) {
        int i = 0;
        *p = '\0';
        line = lines;
        lines = p + 1;
        char *nodename = NULL, *addr = NULL, *flags = NULL, *link_status = NULL;
        while ((p = FUNC6(line, ' ')) != NULL) {
            *p = '\0';
            char *token = line;
            line = p + 1;
            if (i == 0) nodename = token;
            else if (i == 1) addr = token;
            else if (i == 2) flags = token;
            else if (i == 7) link_status = token;
            else if (i == 8) break;
            i++;
        }
        if (i == 7) link_status = line;
        if (nodename == NULL || addr == NULL || flags == NULL ||
            link_status == NULL) continue;
        if (FUNC7(flags, "myself") != NULL) continue;
        int disconnected = ((FUNC7(flags, "disconnected") != NULL) ||
                            (FUNC7(link_status, "disconnected")));
        int handshaking = (FUNC7(flags, "handshake") != NULL);
        if (disconnected || handshaking) {
            clusterManagerLink *link = FUNC8(sizeof(*link));
            link->node_name = FUNC5(nodename);
            link->node_addr = FUNC5(addr);
            link->connected = 0;
            link->handshaking = handshaking;
            FUNC3(links, link);
        }
    }
cleanup:
    if (reply != NULL) FUNC2(reply);
    return links;
}