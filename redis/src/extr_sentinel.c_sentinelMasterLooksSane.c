
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int role_reported; int info_refresh; } ;
typedef TYPE_1__ sentinelRedisInstance ;


 int SENTINEL_INFO_PERIOD ;
 int SRI_MASTER ;
 int SRI_O_DOWN ;
 int SRI_S_DOWN ;
 int mstime () ;

int sentinelMasterLooksSane(sentinelRedisInstance *master) {
    return
        master->flags & SRI_MASTER &&
        master->role_reported == SRI_MASTER &&
        (master->flags & (SRI_S_DOWN|SRI_O_DOWN)) == 0 &&
        (mstime() - master->info_refresh) < SENTINEL_INFO_PERIOD*2;
}
