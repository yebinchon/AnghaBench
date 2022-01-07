
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; TYPE_4__* link; int * runid; int sentinels; struct TYPE_7__* master; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_9__ {int refcount; } ;
struct TYPE_8__ {int masters; } ;


 int C_ERR ;
 int C_OK ;
 int SRI_SENTINEL ;
 int * dictGetIterator (int ) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_1__* getSentinelRedisInstanceByAddrAndRunID (int ,int *,int ,int *) ;
 int releaseInstanceLink (TYPE_4__*,int *) ;
 TYPE_3__ sentinel ;
 int serverAssert (int) ;

int sentinelTryConnectionSharing(sentinelRedisInstance *ri) {
    serverAssert(ri->flags & SRI_SENTINEL);
    dictIterator *di;
    dictEntry *de;

    if (ri->runid == ((void*)0)) return C_ERR;
    if (ri->link->refcount > 1) return C_ERR;

    di = dictGetIterator(sentinel.masters);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *master = dictGetVal(de), *match;


        if (master == ri->master) continue;
        match = getSentinelRedisInstanceByAddrAndRunID(master->sentinels,
                                                       ((void*)0),0,ri->runid);
        if (match == ((void*)0)) continue;
        if (match == ri) continue;



        releaseInstanceLink(ri->link,((void*)0));
        ri->link = match->link;
        match->link->refcount++;
        return C_OK;
    }
    dictReleaseIterator(di);
    return C_ERR;
}
