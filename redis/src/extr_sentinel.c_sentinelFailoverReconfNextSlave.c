
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int flags; int parallel_syncs; scalar_t__ slave_reconf_sent_time; TYPE_3__* promoted_slave; TYPE_1__* link; int slaves; } ;
typedef TYPE_4__ sentinelRedisInstance ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_12__ {TYPE_2__* addr; } ;
struct TYPE_11__ {int port; int ip; } ;
struct TYPE_10__ {scalar_t__ disconnected; } ;


 int C_OK ;
 int LL_NOTICE ;
 scalar_t__ SENTINEL_SLAVE_RECONF_TIMEOUT ;
 int SRI_PROMOTED ;
 int SRI_RECONF_DONE ;
 int SRI_RECONF_INPROG ;
 int SRI_RECONF_SENT ;
 int * dictGetIterator (int ) ;
 TYPE_4__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ mstime () ;
 int sentinelEvent (int ,char*,TYPE_4__*,char*) ;
 int sentinelFailoverDetectEnd (TYPE_4__*) ;
 int sentinelSendSlaveOf (TYPE_4__*,int ,int ) ;

void sentinelFailoverReconfNextSlave(sentinelRedisInstance *master) {
    dictIterator *di;
    dictEntry *de;
    int in_progress = 0;

    di = dictGetIterator(master->slaves);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *slave = dictGetVal(de);

        if (slave->flags & (SRI_RECONF_SENT|SRI_RECONF_INPROG))
            in_progress++;
    }
    dictReleaseIterator(di);

    di = dictGetIterator(master->slaves);
    while(in_progress < master->parallel_syncs &&
          (de = dictNext(di)) != ((void*)0))
    {
        sentinelRedisInstance *slave = dictGetVal(de);
        int retval;


        if (slave->flags & (SRI_PROMOTED|SRI_RECONF_DONE)) continue;





        if ((slave->flags & SRI_RECONF_SENT) &&
            (mstime() - slave->slave_reconf_sent_time) >
            SENTINEL_SLAVE_RECONF_TIMEOUT)
        {
            sentinelEvent(LL_NOTICE,"-slave-reconf-sent-timeout",slave,"%@");
            slave->flags &= ~SRI_RECONF_SENT;
            slave->flags |= SRI_RECONF_DONE;
        }



        if (slave->flags & (SRI_RECONF_SENT|SRI_RECONF_INPROG)) continue;
        if (slave->link->disconnected) continue;


        retval = sentinelSendSlaveOf(slave,
                master->promoted_slave->addr->ip,
                master->promoted_slave->addr->port);
        if (retval == C_OK) {
            slave->flags |= SRI_RECONF_SENT;
            slave->slave_reconf_sent_time = mstime();
            sentinelEvent(LL_NOTICE,"+slave-reconf-sent",slave,"%@");
            in_progress++;
        }
    }
    dictReleaseIterator(di);


    sentinelFailoverDetectEnd(master);
}
