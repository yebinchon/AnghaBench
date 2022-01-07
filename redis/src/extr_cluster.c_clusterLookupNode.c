
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
typedef int dictEntry ;
typedef int clusterNode ;
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int nodes; } ;


 int CLUSTER_NAMELEN ;
 int * dictFind (int ,int ) ;
 int * dictGetVal (int *) ;
 int sdsfree (int ) ;
 int sdsnewlen (char const*,int ) ;
 TYPE_2__ server ;

clusterNode *clusterLookupNode(const char *name) {
    sds s = sdsnewlen(name, CLUSTER_NAMELEN);
    dictEntry *de;

    de = dictFind(server.cluster->nodes,s);
    sdsfree(s);
    if (de == ((void*)0)) return ((void*)0);
    return dictGetVal(de);
}
