#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  void* sds ;
struct TYPE_14__ {scalar_t__ type; char* str; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_15__ {char* errstr; scalar_t__ err; } ;
typedef  TYPE_2__ redisContext ;
struct TYPE_16__ {char* ip; int port; char* name; int migrating_count; int importing_count; int* slots; scalar_t__ slots_count; void** importing; void** migrating; } ;
typedef  TYPE_3__ clusterNode ;
struct TYPE_13__ {char* hostsocket; char* hostip; int hostport; scalar_t__ cluster_nodes; } ;

/* Variables and functions */
 scalar_t__ REDIS_REPLY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (char*) ; 
 TYPE_11__ config ; 
 TYPE_3__* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC9 (char*,int) ; 
 TYPE_2__* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (char*,char) ; 
 int FUNC14 (char*) ; 
 char* FUNC15 (char*,char*) ; 
 void* FUNC16 (void**,int) ; 

__attribute__((used)) static int FUNC17() {
    int success = 1;
    redisContext *ctx = NULL;
    redisReply *reply =  NULL;
    if (config.hostsocket == NULL)
        ctx = FUNC9(config.hostip,config.hostport);
    else
        ctx = FUNC10(config.hostsocket);
    if (ctx->err) {
        FUNC4(stderr,"Could not connect to Redis at ");
        if (config.hostsocket == NULL) {
            FUNC4(stderr,"%s:%d: %s\n",config.hostip,config.hostport,
                    ctx->errstr);
        } else FUNC4(stderr,"%s: %s\n",config.hostsocket,ctx->errstr);
        FUNC3(1);
    }
    clusterNode *firstNode = FUNC2((char *) config.hostip,
                                               config.hostport);
    if (!firstNode) {success = 0; goto cleanup;}
    reply = FUNC8(ctx, "CLUSTER NODES");
    success = (reply != NULL);
    if (!success) goto cleanup;
    success = (reply->type != REDIS_REPLY_ERROR);
    if (!success) {
        if (config.hostsocket == NULL) {
            FUNC4(stderr, "Cluster node %s:%d replied with error:\n%s\n",
                    config.hostip, config.hostport, reply->str);
        } else {
            FUNC4(stderr, "Cluster node %s replied with error:\n%s\n",
                    config.hostsocket, reply->str);
        }
        goto cleanup;
    }
    char *lines = reply->str, *p, *line;
    while ((p = FUNC15(lines, "\n")) != NULL) {
        *p = '\0';
        line = lines;
        lines = p + 1;
        char *name = NULL, *addr = NULL, *flags = NULL, *master_id = NULL;
        int i = 0;
        while ((p = FUNC13(line, ' ')) != NULL) {
            *p = '\0';
            char *token = line;
            line = p + 1;
            switch(i++){
            case 0: name = token; break;
            case 1: addr = token; break;
            case 2: flags = token; break;
            case 3: master_id = token; break;
            }
            if (i == 8) break; // Slots
        }
        if (!flags) {
            FUNC4(stderr, "Invalid CLUSTER NODES reply: missing flags.\n");
            success = 0;
            goto cleanup;
        }
        int myself = (FUNC15(flags, "myself") != NULL);
        int is_replica = (FUNC15(flags, "slave") != NULL ||
                         (master_id != NULL && master_id[0] != '-'));
        if (is_replica) continue;
        if (addr == NULL) {
            FUNC4(stderr, "Invalid CLUSTER NODES reply: missing addr.\n");
            success = 0;
            goto cleanup;
        }
        clusterNode *node = NULL;
        char *ip = NULL;
        int port = 0;
        char *paddr = FUNC13(addr, ':');
        if (paddr != NULL) {
            *paddr = '\0';
            ip = addr;
            addr = paddr + 1;
            /* If internal bus is specified, then just drop it. */
            if ((paddr = FUNC13(addr, '@')) != NULL) *paddr = '\0';
            port = FUNC1(addr);
        }
        if (myself) {
            node = firstNode;
            if (node->ip == NULL && ip != NULL) {
                node->ip = ip;
                node->port = port;
            }
        } else {
            node = FUNC2(FUNC12(ip), port);
        }
        if (node == NULL) {
            success = 0;
            goto cleanup;
        }
        if (name != NULL) node->name = FUNC12(name);
        if (i == 8) {
            int remaining = FUNC14(line);
            while (remaining > 0) {
                p = FUNC13(line, ' ');
                if (p == NULL) p = line + remaining;
                remaining -= (p - line);

                char *slotsdef = line;
                *p = '\0';
                if (remaining) {
                    line = p + 1;
                    remaining--;
                } else line = p;
                char *dash = NULL;
                if (slotsdef[0] == '[') {
                    slotsdef++;
                    if ((p = FUNC15(slotsdef, "->-"))) { // Migrating
                        *p = '\0';
                        p += 3;
                        char *closing_bracket = FUNC13(p, ']');
                        if (closing_bracket) *closing_bracket = '\0';
                        sds slot = FUNC12(slotsdef);
                        sds dst = FUNC12(p);
                        node->migrating_count += 2;
                        node->migrating =
                            FUNC16(node->migrating,
                                (node->migrating_count * sizeof(sds)));
                        node->migrating[node->migrating_count - 2] =
                            slot;
                        node->migrating[node->migrating_count - 1] =
                            dst;
                    }  else if ((p = FUNC15(slotsdef, "-<-"))) {//Importing
                        *p = '\0';
                        p += 3;
                        char *closing_bracket = FUNC13(p, ']');
                        if (closing_bracket) *closing_bracket = '\0';
                        sds slot = FUNC12(slotsdef);
                        sds src = FUNC12(p);
                        node->importing_count += 2;
                        node->importing = FUNC16(node->importing,
                            (node->importing_count * sizeof(sds)));
                        node->importing[node->importing_count - 2] =
                            slot;
                        node->importing[node->importing_count - 1] =
                            src;
                    }
                } else if ((dash = FUNC13(slotsdef, '-')) != NULL) {
                    p = dash;
                    int start, stop;
                    *p = '\0';
                    start = FUNC1(slotsdef);
                    stop = FUNC1(p + 1);
                    while (start <= stop) {
                        int slot = start++;
                        node->slots[node->slots_count++] = slot;
                    }
                } else if (p > slotsdef) {
                    int slot = FUNC1(slotsdef);
                    node->slots[node->slots_count++] = slot;
                }
            }
        }
        if (node->slots_count == 0) {
            FUNC7("WARNING: master node %s:%d has no slots, skipping...\n",
                   node->ip, node->port);
            continue;
        }
        if (!FUNC0(node)) {
            success = 0;
            goto cleanup;
        }
    }
cleanup:
    if (ctx) FUNC11(ctx);
    if (!success) {
        if (config.cluster_nodes) FUNC5();
    }
    if (reply) FUNC6(reply);
    return success;
}