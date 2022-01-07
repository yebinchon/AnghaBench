
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; int integer; char* str; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_11__ {TYPE_3__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_12__ {int flags; char* ip; int port; int slots_count; int name; scalar_t__ replicate; } ;
typedef TYPE_3__ clusterManagerNode ;
struct TYPE_13__ {int nodes; } ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (TYPE_3__*,char*) ;
 int CLUSTER_MANAGER_FLAG_SLAVE ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (TYPE_3__*,char*) ;
 scalar_t__ CLUSTER_MANAGER_SLOTS ;
 scalar_t__ REDIS_REPLY_ERROR ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 int clusterManagerLogOk (char*,int,int) ;
 TYPE_6__ cluster_manager ;
 int freeReplyObject (TYPE_1__*) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int memcpy (char*,int ,int) ;
 int printf (char*,...) ;
 int strcmp (scalar_t__,int ) ;

__attribute__((used)) static void clusterManagerShowClusterInfo(void) {
    int masters = 0;
    int keys = 0;
    listIter li;
    listNode *ln;
    listRewind(cluster_manager.nodes, &li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *node = ln->value;
        if (!(node->flags & CLUSTER_MANAGER_FLAG_SLAVE)) {
            if (!node->name) continue;
            int replicas = 0;
            int dbsize = -1;
            char name[9];
            memcpy(name, node->name, 8);
            name[8] = '\0';
            listIter ri;
            listNode *rn;
            listRewind(cluster_manager.nodes, &ri);
            while ((rn = listNext(&ri)) != ((void*)0)) {
                clusterManagerNode *n = rn->value;
                if (n == node || !(n->flags & CLUSTER_MANAGER_FLAG_SLAVE))
                    continue;
                if (n->replicate && !strcmp(n->replicate, node->name))
                    replicas++;
            }
            redisReply *reply = CLUSTER_MANAGER_COMMAND(node, "DBSIZE");
            if (reply != ((void*)0) && reply->type == REDIS_REPLY_INTEGER)
                dbsize = reply->integer;
            if (dbsize < 0) {
                char *err = "";
                if (reply != ((void*)0) && reply->type == REDIS_REPLY_ERROR)
                    err = reply->str;
                CLUSTER_MANAGER_PRINT_REPLY_ERROR(node, err);
                if (reply != ((void*)0)) freeReplyObject(reply);
                return;
            };
            if (reply != ((void*)0)) freeReplyObject(reply);
            printf("%s:%d (%s...) -> %d keys | %d slots | %d slaves.\n",
                   node->ip, node->port, name, dbsize,
                   node->slots_count, replicas);
            masters++;
            keys += dbsize;
        }
    }
    clusterManagerLogOk("[OK] %d keys in %d masters.\n", keys, masters);
    float keys_per_slot = keys / (float) CLUSTER_MANAGER_SLOTS;
    printf("%.2f keys per slot on average.\n", keys_per_slot);
}
