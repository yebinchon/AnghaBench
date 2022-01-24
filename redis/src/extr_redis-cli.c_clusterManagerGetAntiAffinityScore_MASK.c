#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_10__ {TYPE_3__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_11__ {int len; TYPE_3__** nodes; } ;
typedef  TYPE_2__ clusterManagerNodeArray ;
struct TYPE_12__ {char* ip; char* replicate; char* name; } ;
typedef  TYPE_3__ clusterManagerNode ;
struct TYPE_14__ {TYPE_5__* nodes; } ;
struct TYPE_13__ {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clusterManagerDictType ; 
 TYPE_7__ cluster_manager ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,char*,char*) ; 
 char* FUNC14 (char*) ; 
 char* FUNC15 () ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 TYPE_3__** FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(clusterManagerNodeArray *ipnodes,
    int ip_count, clusterManagerNode ***offending, int *offending_len)
{
    int score = 0, i, j;
    int node_len = cluster_manager.nodes->len;
    clusterManagerNode **offending_p = NULL;
    if (offending != NULL) {
        *offending = FUNC18(node_len * sizeof(clusterManagerNode*));
        offending_p = *offending;
    }
    /* For each set of nodes in the same host, split by
     * related nodes (masters and slaves which are involved in
     * replication of each other) */
    for (i = 0; i < ip_count; i++) {
        clusterManagerNodeArray *node_array = &(ipnodes[i]);
        dict *related = FUNC1(&clusterManagerDictType, NULL);
        char *ip = NULL;
        for (j = 0; j < node_array->len; j++) {
            clusterManagerNode *node = node_array->nodes[j];
            if (node == NULL) continue;
            if (!ip) ip = node->ip;
            sds types;
            /* We always use the Master ID as key. */
            sds key = (!node->replicate ? node->name : node->replicate);
            FUNC0(key != NULL);
            dictEntry *entry = FUNC2(related, key);
            if (entry) types = FUNC14((sds) FUNC5(entry));
            else types = FUNC15();
            /* Master type 'm' is always set as the first character of the
             * types string. */
            if (!node->replicate) types = FUNC13(types, "m%s", types);
            else types = FUNC12(types, "s");
            FUNC9(related, key, types);
        }
        /* Now it's trivial to check, for each related group having the
         * same host, what is their local score. */
        dictIterator *iter = FUNC3(related);
        dictEntry *entry;
        while ((entry = FUNC6(iter)) != NULL) {
            sds types = (sds) FUNC5(entry);
            sds name = (sds) FUNC4(entry);
            int typeslen = FUNC16(types);
            if (typeslen < 2) continue;
            if (types[0] == 'm') score += (10000 * (typeslen - 1));
            else score += (1 * typeslen);
            if (offending == NULL) continue;
            /* Populate the list of offending nodes. */
            listIter li;
            listNode *ln;
            FUNC11(cluster_manager.nodes, &li);
            while ((ln = FUNC10(&li)) != NULL) {
                clusterManagerNode *n = ln->value;
                if (n->replicate == NULL) continue;
                if (!FUNC17(n->replicate, name) && !FUNC17(n->ip, ip)) {
                    *(offending_p++) = n;
                    if (offending_len != NULL) (*offending_len)++;
                    break;
                }
            }
        }
        //if (offending_len != NULL) *offending_len = offending_p - *offending;
        FUNC8(iter);
        FUNC7(related);
    }
    return score;
}