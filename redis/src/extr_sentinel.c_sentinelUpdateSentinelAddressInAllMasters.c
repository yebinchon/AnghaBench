
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int addr; TYPE_5__* link; int runid; int sentinels; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_10__ {int * pc; int * cc; } ;
struct TYPE_9__ {int masters; } ;


 int LL_NOTICE ;
 int SRI_SENTINEL ;
 int * dictGetIterator (int ) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dupSentinelAddr (int ) ;
 TYPE_1__* getSentinelRedisInstanceByAddrAndRunID (int ,int *,int ,int ) ;
 int instanceLinkCloseConnection (TYPE_5__*,int *) ;
 int releaseSentinelAddr (int ) ;
 TYPE_4__ sentinel ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*,int) ;
 int serverAssert (int) ;

int sentinelUpdateSentinelAddressInAllMasters(sentinelRedisInstance *ri) {
    serverAssert(ri->flags & SRI_SENTINEL);
    dictIterator *di;
    dictEntry *de;
    int reconfigured = 0;

    di = dictGetIterator(sentinel.masters);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *master = dictGetVal(de), *match;
        match = getSentinelRedisInstanceByAddrAndRunID(master->sentinels,
                                                       ((void*)0),0,ri->runid);


        if (match == ((void*)0)) continue;


        if (match->link->cc != ((void*)0))
            instanceLinkCloseConnection(match->link,match->link->cc);
        if (match->link->pc != ((void*)0))
            instanceLinkCloseConnection(match->link,match->link->pc);

        if (match == ri) continue;



        releaseSentinelAddr(match->addr);
        match->addr = dupSentinelAddr(ri->addr);
        reconfigured++;
    }
    dictReleaseIterator(di);
    if (reconfigured)
        sentinelEvent(LL_NOTICE,"+sentinel-address-update", ri,
                    "%@ %d additional matching instances", reconfigured);
    return reconfigured;
}
