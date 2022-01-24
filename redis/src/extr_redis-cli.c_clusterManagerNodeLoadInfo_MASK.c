#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sds ;
struct TYPE_16__ {char* str; } ;
typedef  TYPE_2__ redisReply ;
struct TYPE_15__ {int flags; int migrating_count; int importing_count; int* slots; void* ping_recv; void* ping_sent; void* current_epoch; int /*<<< orphan*/ * flags_str; void* replicate; void* name; int /*<<< orphan*/ * friends; scalar_t__ dirty; scalar_t__ slots_count; struct TYPE_15__** importing; struct TYPE_15__** migrating; } ;
typedef  TYPE_1__ clusterManagerNode ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,char*) ; 
 int CLUSTER_MANAGER_FLAG_DISCONNECT ; 
 int CLUSTER_MANAGER_FLAG_FAIL ; 
 int CLUSTER_MANAGER_FLAG_FRIEND ; 
 int CLUSTER_MANAGER_FLAG_MYSELF ; 
 int CLUSTER_MANAGER_FLAG_NOADDR ; 
 int CLUSTER_MANAGER_FLAG_SLAVE ; 
 int CLUSTER_MANAGER_OPT_GETFRIENDS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (char*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,char**) ; 
 TYPE_1__* FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 void* FUNC13 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (char*,char) ; 
 scalar_t__ FUNC15 (TYPE_1__*,char*) ; 
 int FUNC16 (char*) ; 
 char* FUNC17 (char*,char) ; 
 char* FUNC18 (char*,char*) ; 
 void* FUNC19 (TYPE_1__**,int) ; 

__attribute__((used)) static int FUNC20(clusterManagerNode *node, int opts,
                                      char **err)
{
    redisReply *reply = FUNC0(node, "CLUSTER NODES");
    int success = 1;
    *err = NULL;
    if (!FUNC4(node, reply, err)) {
        success = 0;
        goto cleanup;
    }
    int getfriends = (opts & CLUSTER_MANAGER_OPT_GETFRIENDS);
    char *lines = reply->str, *p, *line;
    while ((p = FUNC18(lines, "\n")) != NULL) {
        *p = '\0';
        line = lines;
        lines = p + 1;
        char *name = NULL, *addr = NULL, *flags = NULL, *master_id = NULL,
             *ping_sent = NULL, *ping_recv = NULL, *config_epoch = NULL,
             *link_status = NULL;
        FUNC1(link_status);
        int i = 0;
        while ((p = FUNC14(line, ' ')) != NULL) {
            *p = '\0';
            char *token = line;
            line = p + 1;
            switch(i++){
            case 0: name = token; break;
            case 1: addr = token; break;
            case 2: flags = token; break;
            case 3: master_id = token; break;
            case 4: ping_sent = token; break;
            case 5: ping_recv = token; break;
            case 6: config_epoch = token; break;
            case 7: link_status = token; break;
            }
            if (i == 8) break; // Slots
        }
        if (!flags) {
            success = 0;
            goto cleanup;
        }
        int myself = (FUNC18(flags, "myself") != NULL);
        clusterManagerNode *currentNode = NULL;
        if (myself) {
            node->flags |= CLUSTER_MANAGER_FLAG_MYSELF;
            currentNode = node;
            FUNC6(node);
            if (i == 8) {
                int remaining = FUNC16(line);
                while (remaining > 0) {
                    p = FUNC14(line, ' ');
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
                        if ((p = FUNC18(slotsdef, "->-"))) { // Migrating
                            *p = '\0';
                            p += 3;
                            char *closing_bracket = FUNC14(p, ']');
                            if (closing_bracket) *closing_bracket = '\0';
                            sds slot = FUNC13(slotsdef);
                            sds dst = FUNC13(p);
                            node->migrating_count += 2;
                            node->migrating = FUNC19(node->migrating,
                                (node->migrating_count * sizeof(sds)));
                            node->migrating[node->migrating_count - 2] =
                                slot;
                            node->migrating[node->migrating_count - 1] =
                                dst;
                        }  else if ((p = FUNC18(slotsdef, "-<-"))) {//Importing
                            *p = '\0';
                            p += 3;
                            char *closing_bracket = FUNC14(p, ']');
                            if (closing_bracket) *closing_bracket = '\0';
                            sds slot = FUNC13(slotsdef);
                            sds src = FUNC13(p);
                            node->importing_count += 2;
                            node->importing = FUNC19(node->importing,
                                (node->importing_count * sizeof(sds)));
                            node->importing[node->importing_count - 2] =
                                slot;
                            node->importing[node->importing_count - 1] =
                                src;
                        }
                    } else if ((dash = FUNC14(slotsdef, '-')) != NULL) {
                        p = dash;
                        int start, stop;
                        *p = '\0';
                        start = FUNC2(slotsdef);
                        stop = FUNC2(p + 1);
                        node->slots_count += (stop - (start - 1));
                        while (start <= stop) node->slots[start++] = 1;
                    } else if (p > slotsdef) {
                        node->slots[FUNC2(slotsdef)] = 1;
                        node->slots_count++;
                    }
                }
            }
            node->dirty = 0;
        } else if (!getfriends) {
            if (!(node->flags & CLUSTER_MANAGER_FLAG_MYSELF)) continue;
            else break;
        } else {
            if (addr == NULL) {
                FUNC7(stderr, "Error: invalid CLUSTER NODES reply\n");
                success = 0;
                goto cleanup;
            }
            char *c = FUNC17(addr, '@');
            if (c != NULL) *c = '\0';
            c = FUNC17(addr, ':');
            if (c == NULL) {
                FUNC7(stderr, "Error: invalid CLUSTER NODES reply\n");
                success = 0;
                goto cleanup;
            }
            *c = '\0';
            int port = FUNC2(++c);
            currentNode = FUNC5(FUNC13(addr), port);
            currentNode->flags |= CLUSTER_MANAGER_FLAG_FRIEND;
            if (node->friends == NULL) node->friends = FUNC11();
            FUNC10(node->friends, currentNode);
        }
        if (name != NULL) {
            if (currentNode->name) FUNC12(currentNode->name);
            currentNode->name = FUNC13(name);
        }
        if (currentNode->flags_str != NULL)
            FUNC8(currentNode->flags_str);
        currentNode->flags_str = FUNC11();
        int flag_len;
        while ((flag_len = FUNC16(flags)) > 0) {
            sds flag = NULL;
            char *fp = FUNC14(flags, ',');
            if (fp) {
                *fp = '\0';
                flag = FUNC13(flags);
                flags = fp + 1;
            } else {
                flag = FUNC13(flags);
                flags += flag_len;
            }
            if (FUNC15(flag, "noaddr") == 0)
                currentNode->flags |= CLUSTER_MANAGER_FLAG_NOADDR;
            else if (FUNC15(flag, "disconnected") == 0)
                currentNode->flags |= CLUSTER_MANAGER_FLAG_DISCONNECT;
            else if (FUNC15(flag, "fail") == 0)
                currentNode->flags |= CLUSTER_MANAGER_FLAG_FAIL;
            else if (FUNC15(flag, "slave") == 0) {
                currentNode->flags |= CLUSTER_MANAGER_FLAG_SLAVE;
                if (master_id != NULL) {
                    if (currentNode->replicate) FUNC12(currentNode->replicate);
                    currentNode->replicate = FUNC13(master_id);
                }
            }
            FUNC10(currentNode->flags_str, flag);
        }
        if (config_epoch != NULL)
            currentNode->current_epoch = FUNC3(config_epoch);
        if (ping_sent != NULL) currentNode->ping_sent = FUNC3(ping_sent);
        if (ping_recv != NULL) currentNode->ping_recv = FUNC3(ping_recv);
        if (!getfriends && myself) break;
    }
cleanup:
    if (reply) FUNC9(reply);
    return success;
}