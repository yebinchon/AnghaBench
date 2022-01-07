
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_16__ {TYPE_3__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_17__ {int flags; int slot; int source; int name; scalar_t__ replicate; } ;
typedef TYPE_3__ clusterManagerReshardTableItem ;
typedef TYPE_3__ clusterManagerNode ;
struct TYPE_19__ {int * nodes; int * errors; } ;
struct TYPE_15__ {int slots; char* to; char* from; int flags; } ;
struct TYPE_18__ {TYPE_1__ cluster_manager_command; } ;


 int CLUSTER_MANAGER_CMD_FLAG_YES ;
 int CLUSTER_MANAGER_FLAG_SLAVE ;
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ;
 int CLUSTER_MANAGER_OPT_VERBOSE ;
 int CLUSTER_MANAGER_SLOTS ;
 int EOF ;
 int atoi (char*) ;
 int clusterManagerCheckCluster (int ) ;
 int * clusterManagerComputeReshardTable (int *,int) ;
 int clusterManagerLoadInfoFromNode (TYPE_3__*,int ) ;
 int clusterManagerMoveSlot (int ,TYPE_3__*,int ,int,char**) ;
 TYPE_3__* clusterManagerNewNode (char*,int) ;
 char* clusterManagerNodeInfo (TYPE_3__*,int) ;
 int clusterManagerReleaseReshardTable (int *) ;
 int clusterManagerShowReshardTable (int *) ;
 TYPE_3__* clusterNodeForResharding (char*,TYPE_3__*,int*) ;
 TYPE_8__ cluster_manager ;
 TYPE_7__ config ;
 int fflush (int ) ;
 int fileno (int ) ;
 int fprintf (int ,char*) ;
 int getClusterHostFromCmdArgs (int,char**,char**,int*) ;
 int getchar () ;
 int listAddNodeTail (int *,TYPE_3__*) ;
 int * listCreate () ;
 int listEmpty (int *) ;
 int listLength (int *) ;
 TYPE_2__* listNext (int *) ;
 int listRelease (int *) ;
 int listRewind (int *,int *) ;
 int printf (char*,...) ;
 int read (int ,char*,int) ;
 int sdscmp (int ,int ) ;
 int sdsfree (char*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int zfree (char*) ;

__attribute__((used)) static int clusterManagerCommandReshard(int argc, char **argv) {
    int port = 0;
    char *ip = ((void*)0);
    if (!getClusterHostFromCmdArgs(argc, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *node = clusterManagerNewNode(ip, port);
    if (!clusterManagerLoadInfoFromNode(node, 0)) return 0;
    clusterManagerCheckCluster(0);
    if (cluster_manager.errors && listLength(cluster_manager.errors) > 0) {
        fflush(stdout);
        fprintf(stderr,
                "*** Please fix your cluster problems before resharding\n");
        return 0;
    }
    int slots = config.cluster_manager_command.slots;
    if (!slots) {
        while (slots <= 0 || slots > CLUSTER_MANAGER_SLOTS) {
            printf("How many slots do you want to move (from 1 to %d)? ",
                   CLUSTER_MANAGER_SLOTS);
            fflush(stdout);
            char buf[6];
            int nread = read(fileno(stdin),buf,6);
            if (nread <= 0) continue;
            int last_idx = nread - 1;
            if (buf[last_idx] != '\n') {
                int ch;
                while ((ch = getchar()) != '\n' && ch != EOF) {}
            }
            buf[last_idx] = '\0';
            slots = atoi(buf);
        }
    }
    char buf[255];
    char *to = config.cluster_manager_command.to,
         *from = config.cluster_manager_command.from;
    while (to == ((void*)0)) {
        printf("What is the receiving node ID? ");
        fflush(stdout);
        int nread = read(fileno(stdin),buf,255);
        if (nread <= 0) continue;
        int last_idx = nread - 1;
        if (buf[last_idx] != '\n') {
            int ch;
            while ((ch = getchar()) != '\n' && ch != EOF) {}
        }
        buf[last_idx] = '\0';
        if (strlen(buf) > 0) to = buf;
    }
    int raise_err = 0;
    clusterManagerNode *target = clusterNodeForResharding(to, ((void*)0), &raise_err);
    if (target == ((void*)0)) return 0;
    list *sources = listCreate();
    list *table = ((void*)0);
    int all = 0, result = 1;
    if (from == ((void*)0)) {
        printf("Please enter all the source node IDs.\n");
        printf("  Type 'all' to use all the nodes as source nodes for "
               "the hash slots.\n");
        printf("  Type 'done' once you entered all the source nodes IDs.\n");
        while (1) {
            printf("Source node #%lu: ", listLength(sources) + 1);
            fflush(stdout);
            int nread = read(fileno(stdin),buf,255);
            if (nread <= 0) continue;
            int last_idx = nread - 1;
            if (buf[last_idx] != '\n') {
                int ch;
                while ((ch = getchar()) != '\n' && ch != EOF) {}
            }
            buf[last_idx] = '\0';
            if (!strcmp(buf, "done")) break;
            else if (!strcmp(buf, "all")) {
                all = 1;
                break;
            } else {
                clusterManagerNode *src =
                    clusterNodeForResharding(buf, target, &raise_err);
                if (src != ((void*)0)) listAddNodeTail(sources, src);
                else if (raise_err) {
                    result = 0;
                    goto cleanup;
                }
            }
        }
    } else {
        char *p;
        while((p = strchr(from, ',')) != ((void*)0)) {
            *p = '\0';
            if (!strcmp(from, "all")) {
                all = 1;
                break;
            } else {
                clusterManagerNode *src =
                    clusterNodeForResharding(from, target, &raise_err);
                if (src != ((void*)0)) listAddNodeTail(sources, src);
                else if (raise_err) {
                    result = 0;
                    goto cleanup;
                }
            }
            from = p + 1;
        }

        if (!all && strlen(from) > 0) {
            if (!strcmp(from, "all")) all = 1;
            if (!all) {
                clusterManagerNode *src =
                    clusterNodeForResharding(from, target, &raise_err);
                if (src != ((void*)0)) listAddNodeTail(sources, src);
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
        listEmpty(sources);
        listRewind(cluster_manager.nodes, &li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            clusterManagerNode *n = ln->value;
            if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE || n->replicate)
                continue;
            if (!sdscmp(n->name, target->name)) continue;
            listAddNodeTail(sources, n);
        }
    }
    if (listLength(sources) == 0) {
        fprintf(stderr, "*** No source nodes given, operation aborted.\n");
        result = 0;
        goto cleanup;
    }
    printf("\nReady to move %d slots.\n", slots);
    printf("  Source nodes:\n");
    listRewind(sources, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *src = ln->value;
        sds info = clusterManagerNodeInfo(src, 4);
        printf("%s\n", info);
        sdsfree(info);
    }
    printf("  Destination node:\n");
    sds info = clusterManagerNodeInfo(target, 4);
    printf("%s\n", info);
    sdsfree(info);
    table = clusterManagerComputeReshardTable(sources, slots);
    printf("  Resharding plan:\n");
    clusterManagerShowReshardTable(table);
    if (!(config.cluster_manager_command.flags &
          CLUSTER_MANAGER_CMD_FLAG_YES))
    {
        printf("Do you want to proceed with the proposed "
               "reshard plan (yes/no)? ");
        fflush(stdout);
        char buf[4];
        int nread = read(fileno(stdin),buf,4);
        buf[3] = '\0';
        if (nread <= 0 || strcmp("yes", buf) != 0) {
            result = 0;
            goto cleanup;
        }
    }
    int opts = CLUSTER_MANAGER_OPT_VERBOSE;
    listRewind(table, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerReshardTableItem *item = ln->value;
        char *err = ((void*)0);
        result = clusterManagerMoveSlot(item->source, target, item->slot,
                                        opts, &err);
        if (!result) {
            if (err != ((void*)0)) {

                zfree(err);
            }
            goto cleanup;
        }
    }
cleanup:
    listRelease(sources);
    clusterManagerReleaseReshardTable(table);
    return result;
invalid_args:
    fprintf(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}
