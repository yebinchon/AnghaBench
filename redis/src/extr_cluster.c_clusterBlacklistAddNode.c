
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
typedef int dictEntry ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_7__ {TYPE_1__* cluster; } ;
struct TYPE_5__ {int nodes_black_list; } ;


 scalar_t__ CLUSTER_BLACKLIST_TTL ;
 int CLUSTER_NAMELEN ;
 scalar_t__ DICT_OK ;
 int clusterBlacklistCleanup () ;
 scalar_t__ dictAdd (int ,int ,int *) ;
 int * dictFind (int ,int ) ;
 int dictSetUnsignedIntegerVal (int *,scalar_t__) ;
 int sdsdup (int ) ;
 int sdsfree (int ) ;
 int sdsnewlen (int ,int ) ;
 TYPE_3__ server ;
 scalar_t__ time (int *) ;

void clusterBlacklistAddNode(clusterNode *node) {
    dictEntry *de;
    sds id = sdsnewlen(node->name,CLUSTER_NAMELEN);

    clusterBlacklistCleanup();
    if (dictAdd(server.cluster->nodes_black_list,id,((void*)0)) == DICT_OK) {


        id = sdsdup(id);
    }
    de = dictFind(server.cluster->nodes_black_list,id);
    dictSetUnsignedIntegerVal(de,time(((void*)0))+CLUSTER_BLACKLIST_TTL);
    sdsfree(id);
}
