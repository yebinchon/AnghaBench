#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_16__ {TYPE_3__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_17__ {int flags; int /*<<< orphan*/  slot; int /*<<< orphan*/  source; int /*<<< orphan*/  name; scalar_t__ replicate; } ;
typedef  TYPE_3__ clusterManagerReshardTableItem ;
typedef  TYPE_3__ clusterManagerNode ;
struct TYPE_19__ {int /*<<< orphan*/ * nodes; int /*<<< orphan*/ * errors; } ;
struct TYPE_15__ {int slots; char* to; char* from; int flags; } ;
struct TYPE_18__ {TYPE_1__ cluster_manager_command; } ;

/* Variables and functions */
 int CLUSTER_MANAGER_CMD_FLAG_YES ; 
 int CLUSTER_MANAGER_FLAG_SLAVE ; 
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ; 
 int CLUSTER_MANAGER_OPT_VERBOSE ; 
 int CLUSTER_MANAGER_SLOTS ; 
 int EOF ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int,char**) ; 
 TYPE_3__* FUNC5 (char*,int) ; 
 char* FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (char*,TYPE_3__*,int*) ; 
 TYPE_8__ cluster_manager ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,char**,char**,int*) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int FUNC23 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC26 (char*,char) ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 scalar_t__ FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 

__attribute__((used)) static int FUNC30(int argc, char **argv) {
    int port = 0;
    char *ip = NULL;
    if (!FUNC13(argc, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *node = FUNC5(ip, port);
    if (!FUNC3(node, 0)) return 0;
    FUNC1(0);
    if (cluster_manager.errors && FUNC18(cluster_manager.errors) > 0) {
        FUNC10(stdout);
        FUNC12(stderr,
                "*** Please fix your cluster problems before resharding\n");
        return 0;
    }
    int slots = config.cluster_manager_command.slots;
    if (!slots) {
        while (slots <= 0 || slots > CLUSTER_MANAGER_SLOTS) {
            FUNC22("How many slots do you want to move (from 1 to %d)? ",
                   CLUSTER_MANAGER_SLOTS);
            FUNC10(stdout);
            char buf[6];
            int nread = FUNC23(FUNC11(stdin),buf,6);
            if (nread <= 0) continue;
            int last_idx = nread - 1;
            if (buf[last_idx] != '\n') {
                int ch;
                while ((ch = FUNC14()) != '\n' && ch != EOF) {}
            }
            buf[last_idx] = '\0';
            slots = FUNC0(buf);
        }
    }
    char buf[255];
    char *to = config.cluster_manager_command.to,
         *from = config.cluster_manager_command.from;
    while (to == NULL) {
        FUNC22("What is the receiving node ID? ");
        FUNC10(stdout);
        int nread = FUNC23(FUNC11(stdin),buf,255);
        if (nread <= 0) continue;
        int last_idx = nread - 1;
        if (buf[last_idx] != '\n') {
            int ch;
            while ((ch = FUNC14()) != '\n' && ch != EOF) {}
        }
        buf[last_idx] = '\0';
        if (FUNC28(buf) > 0) to = buf;
    }
    int raise_err = 0;
    clusterManagerNode *target = FUNC9(to, NULL, &raise_err);
    if (target == NULL) return 0;
    list *sources = FUNC16();
    list *table = NULL;
    int all = 0, result = 1;
    if (from == NULL) {
        FUNC22("Please enter all the source node IDs.\n");
        FUNC22("  Type 'all' to use all the nodes as source nodes for "
               "the hash slots.\n");
        FUNC22("  Type 'done' once you entered all the source nodes IDs.\n");
        while (1) {
            FUNC22("Source node #%lu: ", FUNC18(sources) + 1);
            FUNC10(stdout);
            int nread = FUNC23(FUNC11(stdin),buf,255);
            if (nread <= 0) continue;
            int last_idx = nread - 1;
            if (buf[last_idx] != '\n') {
                int ch;
                while ((ch = FUNC14()) != '\n' && ch != EOF) {}
            }
            buf[last_idx] = '\0';
            if (!FUNC27(buf, "done")) break;
            else if (!FUNC27(buf, "all")) {
                all = 1;
                break;
            } else {
                clusterManagerNode *src =
                    FUNC9(buf, target, &raise_err);
                if (src != NULL) FUNC15(sources, src);
                else if (raise_err) {
                    result = 0;
                    goto cleanup;
                }
            }
        }
    } else {
        char *p;
        while((p = FUNC26(from, ',')) != NULL) {
            *p = '\0';
            if (!FUNC27(from, "all")) {
                all = 1;
                break;
            } else {
                clusterManagerNode *src =
                    FUNC9(from, target, &raise_err);
                if (src != NULL) FUNC15(sources, src);
                else if (raise_err) {
                    result = 0;
                    goto cleanup;
                }
            }
            from = p + 1;
        }
        /* Check if there's still another source to process. */
        if (!all && FUNC28(from) > 0) {
            if (!FUNC27(from, "all")) all = 1;
            if (!all) {
                clusterManagerNode *src =
                    FUNC9(from, target, &raise_err);
                if (src != NULL) FUNC15(sources, src);
                else if (raise_err) {
                    result = 0;
                    goto cleanup;
                }
            }
        }
    }
    listIter li;
    listNode *ln;
    if (all) {
        FUNC17(sources);
        FUNC21(cluster_manager.nodes, &li);
        while ((ln = FUNC19(&li)) != NULL) {
            clusterManagerNode *n = ln->value;
            if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE || n->replicate)
                continue;
            if (!FUNC24(n->name, target->name)) continue;
            FUNC15(sources, n);
        }
    }
    if (FUNC18(sources) == 0) {
        FUNC12(stderr, "*** No source nodes given, operation aborted.\n");
        result = 0;
        goto cleanup;
    }
    FUNC22("\nReady to move %d slots.\n", slots);
    FUNC22("  Source nodes:\n");
    FUNC21(sources, &li);
    while ((ln = FUNC19(&li)) != NULL) {
        clusterManagerNode *src = ln->value;
        sds info = FUNC6(src, 4);
        FUNC22("%s\n", info);
        FUNC25(info);
    }
    FUNC22("  Destination node:\n");
    sds info = FUNC6(target, 4);
    FUNC22("%s\n", info);
    FUNC25(info);
    table = FUNC2(sources, slots);
    FUNC22("  Resharding plan:\n");
    FUNC8(table);
    if (!(config.cluster_manager_command.flags &
          CLUSTER_MANAGER_CMD_FLAG_YES))
    {
        FUNC22("Do you want to proceed with the proposed "
               "reshard plan (yes/no)? ");
        FUNC10(stdout);
        char buf[4];
        int nread = FUNC23(FUNC11(stdin),buf,4);
        buf[3] = '\0';
        if (nread <= 0 || FUNC27("yes", buf) != 0) {
            result = 0;
            goto cleanup;
        }
    }
    int opts = CLUSTER_MANAGER_OPT_VERBOSE;
    FUNC21(table, &li);
    while ((ln = FUNC19(&li)) != NULL) {
        clusterManagerReshardTableItem *item = ln->value;
        char *err = NULL;
        result = FUNC4(item->source, target, item->slot,
                                        opts, &err);
        if (!result) {
            if (err != NULL) {
                //clusterManagerLogErr("\n%s\n", err);
                FUNC29(err);
            }
            goto cleanup;
        }
    }
cleanup:
    FUNC20(sources);
    FUNC7(table);
    return result;
invalid_args:
    FUNC12(stderr, "%s", CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}