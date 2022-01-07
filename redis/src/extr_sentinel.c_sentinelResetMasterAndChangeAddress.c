
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int quorum; scalar_t__ s_down_since_time; scalar_t__ o_down_since_time; TYPE_2__* addr; int slaves; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_17__ {char* ip; int port; } ;
typedef TYPE_2__ sentinelAddr ;
typedef int dictIterator ;
typedef int dictEntry ;


 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int SENTINEL_RESET_NO_SENTINELS ;
 int SRI_SLAVE ;
 TYPE_2__* createSentinelAddr (char*,int) ;
 TYPE_1__* createSentinelRedisInstance (int *,int ,char*,int,int ,TYPE_1__*) ;
 int * dictGetIterator (int ) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int releaseSentinelAddr (TYPE_2__*) ;
 scalar_t__ sentinelAddrIsEqual (TYPE_2__*,TYPE_2__*) ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*) ;
 int sentinelFlushConfig () ;
 int sentinelResetMaster (TYPE_1__*,int ) ;
 int zfree (TYPE_2__**) ;
 TYPE_2__** zrealloc (TYPE_2__**,int) ;

int sentinelResetMasterAndChangeAddress(sentinelRedisInstance *master, char *ip, int port) {
    sentinelAddr *oldaddr, *newaddr;
    sentinelAddr **slaves = ((void*)0);
    int numslaves = 0, j;
    dictIterator *di;
    dictEntry *de;

    newaddr = createSentinelAddr(ip,port);
    if (newaddr == ((void*)0)) return C_ERR;



    di = dictGetIterator(master->slaves);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *slave = dictGetVal(de);

        if (sentinelAddrIsEqual(slave->addr,newaddr)) continue;
        slaves = zrealloc(slaves,sizeof(sentinelAddr*)*(numslaves+1));
        slaves[numslaves++] = createSentinelAddr(slave->addr->ip,
                                                 slave->addr->port);
    }
    dictReleaseIterator(di);




    if (!sentinelAddrIsEqual(newaddr,master->addr)) {
        slaves = zrealloc(slaves,sizeof(sentinelAddr*)*(numslaves+1));
        slaves[numslaves++] = createSentinelAddr(master->addr->ip,
                                                 master->addr->port);
    }


    sentinelResetMaster(master,SENTINEL_RESET_NO_SENTINELS);
    oldaddr = master->addr;
    master->addr = newaddr;
    master->o_down_since_time = 0;
    master->s_down_since_time = 0;


    for (j = 0; j < numslaves; j++) {
        sentinelRedisInstance *slave;

        slave = createSentinelRedisInstance(((void*)0),SRI_SLAVE,slaves[j]->ip,
                    slaves[j]->port, master->quorum, master);
        releaseSentinelAddr(slaves[j]);
        if (slave) sentinelEvent(LL_NOTICE,"+slave",slave,"%@");
    }
    zfree(slaves);



    releaseSentinelAddr(oldaddr);
    sentinelFlushConfig();
    return C_OK;
}
