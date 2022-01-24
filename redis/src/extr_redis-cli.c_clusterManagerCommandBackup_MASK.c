#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_12__ {TYPE_3__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_13__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; scalar_t__ replicate; } ;
typedef  TYPE_3__ clusterManagerNode ;
struct TYPE_15__ {int /*<<< orphan*/  nodes; int /*<<< orphan*/  errors; } ;
struct TYPE_11__ {char* backup_dir; } ;
struct TYPE_14__ {TYPE_1__ cluster_manager_command; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_3__* FUNC7 (char*,int) ; 
 char* FUNC8 (TYPE_3__*,int) ; 
 TYPE_7__ cluster_manager ; 
 TYPE_6__ config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,char**,char**,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (char*) ; 
 char* FUNC22 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC23(int argc, char **argv) {
    FUNC0(argc);
    int success = 1, port = 0;
    char *ip = NULL;
    if (!FUNC14(1, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *refnode = FUNC7(ip, port);
    if (!FUNC2(refnode, 0)) return 0;
    int no_issues = FUNC1(0);
    int cluster_errors_count = (no_issues ? 0 :
                                FUNC16(cluster_manager.errors));
    config.cluster_manager_command.backup_dir = argv[1];
    /* TODO: check if backup_dir is a valid directory. */
    sds json = FUNC22("[\n");
    int first_node = 0;
    listIter li;
    listNode *ln;
    FUNC18(cluster_manager.nodes, &li);
    while ((ln = FUNC17(&li)) != NULL) {
        if (!first_node) first_node = 1;
        else json = FUNC19(json, ",\n");
        clusterManagerNode *node = ln->value;
        sds node_json = FUNC8(node, cluster_errors_count);
        json = FUNC19(json, node_json);
        FUNC20(node_json);
        if (node->replicate)
            continue;
        FUNC4(">>> Node %s:%d -> Saving RDB...\n",
                              node->ip, node->port);
        FUNC10(stdout);
        FUNC15(node);
    }
    json = FUNC19(json, "\n]");
    sds jsonpath = FUNC22(config.cluster_manager_command.backup_dir);
    if (jsonpath[FUNC21(jsonpath) - 1] != '/')
        jsonpath = FUNC19(jsonpath, "/");
    jsonpath = FUNC19(jsonpath, "nodes.json");
    FUNC10(stdout);
    FUNC4("Saving cluster configuration to: %s\n", jsonpath);
    FILE *out = FUNC11(jsonpath, "w+");
    if (!out) {
        FUNC3("Could not save nodes to: %s\n", jsonpath);
        success = 0;
        goto cleanup;
    }
    FUNC13(json, out);
    FUNC9(out);
cleanup:
    FUNC20(json);
    FUNC20(jsonpath);
    if (success) {
        if (!no_issues) {
            FUNC6("*** Cluster seems to have some problems, "
                                  "please be aware of it if you're going "
                                  "to restore this backup.\n");
        }
        FUNC5("[OK] Backup created into: %s\n",
                            config.cluster_manager_command.backup_dir);
    } else FUNC5("[ERR] Failed to back cluster!\n");
    return success;
invalid_args:
    FUNC12(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}