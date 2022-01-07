
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; unsigned int quorum; int o_down_since_time; int sentinels; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int dictIterator ;
typedef int dictEntry ;


 int LL_WARNING ;
 int SRI_MASTER_DOWN ;
 int SRI_O_DOWN ;
 int SRI_S_DOWN ;
 int * dictGetIterator (int ) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int mstime () ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*,...) ;

void sentinelCheckObjectivelyDown(sentinelRedisInstance *master) {
    dictIterator *di;
    dictEntry *de;
    unsigned int quorum = 0, odown = 0;

    if (master->flags & SRI_S_DOWN) {

        quorum = 1;

        di = dictGetIterator(master->sentinels);
        while((de = dictNext(di)) != ((void*)0)) {
            sentinelRedisInstance *ri = dictGetVal(de);

            if (ri->flags & SRI_MASTER_DOWN) quorum++;
        }
        dictReleaseIterator(di);
        if (quorum >= master->quorum) odown = 1;
    }


    if (odown) {
        if ((master->flags & SRI_O_DOWN) == 0) {
            sentinelEvent(LL_WARNING,"+odown",master,"%@ #quorum %d/%d",
                quorum, master->quorum);
            master->flags |= SRI_O_DOWN;
            master->o_down_since_time = mstime();
        }
    } else {
        if (master->flags & SRI_O_DOWN) {
            sentinelEvent(LL_WARNING,"-odown",master,"%@");
            master->flags &= ~SRI_O_DOWN;
        }
    }
}
