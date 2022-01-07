
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* sds ;
struct TYPE_16__ {char* str; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_15__ {int flags; int migrating_count; int importing_count; int* slots; void* ping_recv; void* ping_sent; void* current_epoch; int * flags_str; void* replicate; void* name; int * friends; scalar_t__ dirty; scalar_t__ slots_count; struct TYPE_15__** importing; struct TYPE_15__** migrating; } ;
typedef TYPE_1__ clusterManagerNode ;


 TYPE_2__* CLUSTER_MANAGER_COMMAND (TYPE_1__*,char*) ;
 int CLUSTER_MANAGER_FLAG_DISCONNECT ;
 int CLUSTER_MANAGER_FLAG_FAIL ;
 int CLUSTER_MANAGER_FLAG_FRIEND ;
 int CLUSTER_MANAGER_FLAG_MYSELF ;
 int CLUSTER_MANAGER_FLAG_NOADDR ;
 int CLUSTER_MANAGER_FLAG_SLAVE ;
 int CLUSTER_MANAGER_OPT_GETFRIENDS ;
 int UNUSED (char*) ;
 size_t atoi (char*) ;
 void* atoll (char*) ;
 int clusterManagerCheckRedisReply (TYPE_1__*,TYPE_2__*,char**) ;
 TYPE_1__* clusterManagerNewNode (void*,int) ;
 int clusterManagerNodeResetSlots (TYPE_1__*) ;
 int fprintf (int ,char*) ;
 int freeClusterManagerNodeFlags (int *) ;
 int freeReplyObject (TYPE_2__*) ;
 int listAddNodeTail (int *,TYPE_1__*) ;
 void* listCreate () ;
 int sdsfree (void*) ;
 void* sdsnew (char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (TYPE_1__*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;
 void* zrealloc (TYPE_1__**,int) ;

__attribute__((used)) static int clusterManagerNodeLoadInfo(clusterManagerNode *node, int opts,
                                      char **err)
{
    redisReply *reply = CLUSTER_MANAGER_COMMAND(node, "CLUSTER NODES");
    int success = 1;
    *err = ((void*)0);
    if (!clusterManagerCheckRedisReply(node, reply, err)) {
        success = 0;
        goto cleanup;
    }
    int getfriends = (opts & CLUSTER_MANAGER_OPT_GETFRIENDS);
    char *lines = reply->str, *p, *line;
    while ((p = strstr(lines, "\n")) != ((void*)0)) {
        *p = '\0';
        line = lines;
        lines = p + 1;
        char *name = ((void*)0), *addr = ((void*)0), *flags = ((void*)0), *master_id = ((void*)0),
             *ping_sent = ((void*)0), *ping_recv = ((void*)0), *config_epoch = ((void*)0),
             *link_status = ((void*)0);
        UNUSED(link_status);
        int i = 0;
        while ((p = strchr(line, ' ')) != ((void*)0)) {
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
            if (i == 8) break;
        }
        if (!flags) {
            success = 0;
            goto cleanup;
        }
        int myself = (strstr(flags, "myself") != ((void*)0));
        clusterManagerNode *currentNode = ((void*)0);
        if (myself) {
            node->flags |= CLUSTER_MANAGER_FLAG_MYSELF;
            currentNode = node;
            clusterManagerNodeResetSlots(node);
            if (i == 8) {
                int remaining = strlen(line);
                while (remaining > 0) {
                    p = strchr(line, ' ');
                    if (p == ((void*)0)) p = line + remaining;
                    remaining -= (p - line);

                    char *slotsdef = line;
                    *p = '\0';
                    if (remaining) {
                        line = p + 1;
                        remaining--;
                    } else line = p;
                    char *dash = ((void*)0);
                    if (slotsdef[0] == '[') {
                        slotsdef++;
                        if ((p = strstr(slotsdef, "->-"))) {
                            *p = '\0';
                            p += 3;
                            char *closing_bracket = strchr(p, ']');
                            if (closing_bracket) *closing_bracket = '\0';
                            sds slot = sdsnew(slotsdef);
                            sds dst = sdsnew(p);
                            node->migrating_count += 2;
                            node->migrating = zrealloc(node->migrating,
                                (node->migrating_count * sizeof(sds)));
                            node->migrating[node->migrating_count - 2] =
                                slot;
                            node->migrating[node->migrating_count - 1] =
                                dst;
                        } else if ((p = strstr(slotsdef, "-<-"))) {
                            *p = '\0';
                            p += 3;
                            char *closing_bracket = strchr(p, ']');
                            if (closing_bracket) *closing_bracket = '\0';
                            sds slot = sdsnew(slotsdef);
                            sds src = sdsnew(p);
                            node->importing_count += 2;
                            node->importing = zrealloc(node->importing,
                                (node->importing_count * sizeof(sds)));
                            node->importing[node->importing_count - 2] =
                                slot;
                            node->importing[node->importing_count - 1] =
                                src;
                        }
                    } else if ((dash = strchr(slotsdef, '-')) != ((void*)0)) {
                        p = dash;
                        int start, stop;
                        *p = '\0';
                        start = atoi(slotsdef);
                        stop = atoi(p + 1);
                        node->slots_count += (stop - (start - 1));
                        while (start <= stop) node->slots[start++] = 1;
                    } else if (p > slotsdef) {
                        node->slots[atoi(slotsdef)] = 1;
                        node->slots_count++;
                    }
                }
            }
            node->dirty = 0;
        } else if (!getfriends) {
            if (!(node->flags & CLUSTER_MANAGER_FLAG_MYSELF)) continue;
            else break;
        } else {
            if (addr == ((void*)0)) {
                fprintf(stderr, "Error: invalid CLUSTER NODES reply\n");
                success = 0;
                goto cleanup;
            }
            char *c = strrchr(addr, '@');
            if (c != ((void*)0)) *c = '\0';
            c = strrchr(addr, ':');
            if (c == ((void*)0)) {
                fprintf(stderr, "Error: invalid CLUSTER NODES reply\n");
                success = 0;
                goto cleanup;
            }
            *c = '\0';
            int port = atoi(++c);
            currentNode = clusterManagerNewNode(sdsnew(addr), port);
            currentNode->flags |= CLUSTER_MANAGER_FLAG_FRIEND;
            if (node->friends == ((void*)0)) node->friends = listCreate();
            listAddNodeTail(node->friends, currentNode);
        }
        if (name != ((void*)0)) {
            if (currentNode->name) sdsfree(currentNode->name);
            currentNode->name = sdsnew(name);
        }
        if (currentNode->flags_str != ((void*)0))
            freeClusterManagerNodeFlags(currentNode->flags_str);
        currentNode->flags_str = listCreate();
        int flag_len;
        while ((flag_len = strlen(flags)) > 0) {
            sds flag = ((void*)0);
            char *fp = strchr(flags, ',');
            if (fp) {
                *fp = '\0';
                flag = sdsnew(flags);
                flags = fp + 1;
            } else {
                flag = sdsnew(flags);
                flags += flag_len;
            }
            if (strcmp(flag, "noaddr") == 0)
                currentNode->flags |= CLUSTER_MANAGER_FLAG_NOADDR;
            else if (strcmp(flag, "disconnected") == 0)
                currentNode->flags |= CLUSTER_MANAGER_FLAG_DISCONNECT;
            else if (strcmp(flag, "fail") == 0)
                currentNode->flags |= CLUSTER_MANAGER_FLAG_FAIL;
            else if (strcmp(flag, "slave") == 0) {
                currentNode->flags |= CLUSTER_MANAGER_FLAG_SLAVE;
                if (master_id != ((void*)0)) {
                    if (currentNode->replicate) sdsfree(currentNode->replicate);
                    currentNode->replicate = sdsnew(master_id);
                }
            }
            listAddNodeTail(currentNode->flags_str, flag);
        }
        if (config_epoch != ((void*)0))
            currentNode->current_epoch = atoll(config_epoch);
        if (ping_sent != ((void*)0)) currentNode->ping_sent = atoll(ping_sent);
        if (ping_recv != ((void*)0)) currentNode->ping_recv = atoll(ping_recv);
        if (!getfriends && myself) break;
    }
cleanup:
    if (reply) freeReplyObject(reply);
    return success;
}
