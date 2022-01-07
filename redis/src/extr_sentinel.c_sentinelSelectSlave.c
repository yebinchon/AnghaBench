
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; scalar_t__ s_down_since_time; int down_after_period; scalar_t__ slave_priority; scalar_t__ info_refresh; scalar_t__ master_link_down_time; TYPE_1__* link; int slaves; } ;
typedef TYPE_2__ sentinelRedisInstance ;
typedef scalar_t__ mstime_t ;
typedef int instance ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_9__ {int last_avail_time; scalar_t__ disconnected; } ;


 int SENTINEL_INFO_PERIOD ;
 int SENTINEL_PING_PERIOD ;
 int SRI_O_DOWN ;
 int SRI_S_DOWN ;
 int compareSlavesForPromotion ;
 int * dictGetIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int ) ;
 scalar_t__ mstime () ;
 int qsort (TYPE_2__**,int,int,int ) ;
 int zfree (TYPE_2__**) ;
 TYPE_2__** zmalloc (int) ;

sentinelRedisInstance *sentinelSelectSlave(sentinelRedisInstance *master) {
    sentinelRedisInstance **instance =
        zmalloc(sizeof(instance[0])*dictSize(master->slaves));
    sentinelRedisInstance *selected = ((void*)0);
    int instances = 0;
    dictIterator *di;
    dictEntry *de;
    mstime_t max_master_down_time = 0;

    if (master->flags & SRI_S_DOWN)
        max_master_down_time += mstime() - master->s_down_since_time;
    max_master_down_time += master->down_after_period * 10;

    di = dictGetIterator(master->slaves);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *slave = dictGetVal(de);
        mstime_t info_validity_time;

        if (slave->flags & (SRI_S_DOWN|SRI_O_DOWN)) continue;
        if (slave->link->disconnected) continue;
        if (mstime() - slave->link->last_avail_time > SENTINEL_PING_PERIOD*5) continue;
        if (slave->slave_priority == 0) continue;




        if (master->flags & SRI_S_DOWN)
            info_validity_time = SENTINEL_PING_PERIOD*5;
        else
            info_validity_time = SENTINEL_INFO_PERIOD*3;
        if (mstime() - slave->info_refresh > info_validity_time) continue;
        if (slave->master_link_down_time > max_master_down_time) continue;
        instance[instances++] = slave;
    }
    dictReleaseIterator(di);
    if (instances) {
        qsort(instance,instances,sizeof(sentinelRedisInstance*),
            compareSlavesForPromotion);
        selected = instance[0];
    }
    zfree(instance);
    return selected;
}
