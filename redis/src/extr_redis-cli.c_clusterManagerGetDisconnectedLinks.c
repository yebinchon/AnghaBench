
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* str; } ;
typedef TYPE_1__ redisReply ;
typedef int list ;
typedef int clusterManagerNode ;
struct TYPE_9__ {int handshaking; scalar_t__ connected; void* node_addr; void* node_name; } ;
typedef TYPE_2__ clusterManagerLink ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (int *,char*) ;
 int clusterManagerCheckRedisReply (int *,TYPE_1__*,int *) ;
 int freeReplyObject (TYPE_1__*) ;
 int listAddNodeTail (int *,TYPE_2__*) ;
 int * listCreate () ;
 void* sdsnew (char*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;
 TYPE_2__* zmalloc (int) ;

__attribute__((used)) static list *clusterManagerGetDisconnectedLinks(clusterManagerNode *node) {
    list *links = ((void*)0);
    redisReply *reply = CLUSTER_MANAGER_COMMAND(node, "CLUSTER NODES");
    if (!clusterManagerCheckRedisReply(node, reply, ((void*)0))) goto cleanup;
    links = listCreate();
    char *lines = reply->str, *p, *line;
    while ((p = strstr(lines, "\n")) != ((void*)0)) {
        int i = 0;
        *p = '\0';
        line = lines;
        lines = p + 1;
        char *nodename = ((void*)0), *addr = ((void*)0), *flags = ((void*)0), *link_status = ((void*)0);
        while ((p = strchr(line, ' ')) != ((void*)0)) {
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
        if (nodename == ((void*)0) || addr == ((void*)0) || flags == ((void*)0) ||
            link_status == ((void*)0)) continue;
        if (strstr(flags, "myself") != ((void*)0)) continue;
        int disconnected = ((strstr(flags, "disconnected") != ((void*)0)) ||
                            (strstr(link_status, "disconnected")));
        int handshaking = (strstr(flags, "handshake") != ((void*)0));
        if (disconnected || handshaking) {
            clusterManagerLink *link = zmalloc(sizeof(*link));
            link->node_name = sdsnew(nodename);
            link->node_addr = sdsnew(addr);
            link->connected = 0;
            link->handshaking = handshaking;
            listAddNodeTail(links, link);
        }
    }
cleanup:
    if (reply != ((void*)0)) freeReplyObject(reply);
    return links;
}
