#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; int integer; char* str; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_11__ {TYPE_3__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_12__ {int flags; char* ip; int port; int slots_count; int /*<<< orphan*/  name; scalar_t__ replicate; } ;
typedef  TYPE_3__ clusterManagerNode ;
struct TYPE_13__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_3__*,char*) ; 
 int CLUSTER_MANAGER_FLAG_SLAVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 scalar_t__ CLUSTER_MANAGER_SLOTS ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 scalar_t__ REDIS_REPLY_INTEGER ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 TYPE_6__ cluster_manager ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void) {
    int masters = 0;
    int keys = 0;
    listIter li;
    listNode *ln;
    FUNC5(cluster_manager.nodes, &li);
    while ((ln = FUNC4(&li)) != NULL) {
        clusterManagerNode *node = ln->value;
        if (!(node->flags & CLUSTER_MANAGER_FLAG_SLAVE)) {
            if (!node->name) continue;
            int replicas = 0;
            int dbsize = -1;
            char name[9];
            FUNC6(name, node->name, 8);
            name[8] = '\0';
            listIter ri;
            listNode *rn;
            FUNC5(cluster_manager.nodes, &ri);
            while ((rn = FUNC4(&ri)) != NULL) {
                clusterManagerNode *n = rn->value;
                if (n == node || !(n->flags & CLUSTER_MANAGER_FLAG_SLAVE))
                    continue;
                if (n->replicate && !FUNC8(n->replicate, node->name))
                    replicas++;
            }
            redisReply *reply = FUNC0(node, "DBSIZE");
            if (reply != NULL && reply->type == REDIS_REPLY_INTEGER)
                dbsize = reply->integer;
            if (dbsize < 0) {
                char *err = "";
                if (reply != NULL && reply->type == REDIS_REPLY_ERROR)
                    err = reply->str;
                FUNC1(node, err);
                if (reply != NULL) FUNC3(reply);
                return;
            };
            if (reply != NULL) FUNC3(reply);
            FUNC7("%s:%d (%s...) -> %d keys | %d slots | %d slaves.\n",
                   node->ip, node->port, name, dbsize,
                   node->slots_count, replicas);
            masters++;
            keys += dbsize;
        }
    }
    FUNC2("[OK] %d keys in %d masters.\n", keys, masters);
    float keys_per_slot = keys / (float) CLUSTER_MANAGER_SLOTS;
    FUNC7("%.2f keys per slot on average.\n", keys_per_slot);
}