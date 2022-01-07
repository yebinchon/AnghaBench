
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbnum; scalar_t__ activerehashing; scalar_t__ active_defrag_enabled; int * masterhost; scalar_t__ active_expire_enabled; } ;


 int ACTIVE_EXPIRE_CYCLE_SLOW ;
 int CRON_DBS_PER_CALL ;
 int activeDefragCycle () ;
 int activeExpireCycle (int ) ;
 int expireSlaveKeys () ;
 int hasActiveChildProcess () ;
 int incrementallyRehash (unsigned int) ;
 TYPE_1__ server ;
 int tryResizeHashTables (unsigned int) ;

void databasesCron(void) {


    if (server.active_expire_enabled) {
        if (server.masterhost == ((void*)0)) {
            activeExpireCycle(ACTIVE_EXPIRE_CYCLE_SLOW);
        } else {
            expireSlaveKeys();
        }
    }


    if (server.active_defrag_enabled)
        activeDefragCycle();




    if (!hasActiveChildProcess()) {



        static unsigned int resize_db = 0;
        static unsigned int rehash_db = 0;
        int dbs_per_call = CRON_DBS_PER_CALL;
        int j;


        if (dbs_per_call > server.dbnum) dbs_per_call = server.dbnum;


        for (j = 0; j < dbs_per_call; j++) {
            tryResizeHashTables(resize_db % server.dbnum);
            resize_db++;
        }


        if (server.activerehashing) {
            for (j = 0; j < dbs_per_call; j++) {
                int work_done = incrementallyRehash(rehash_db);
                if (work_done) {


                    break;
                } else {

                    rehash_db++;
                    rehash_db %= server.dbnum;
                }
            }
        }
    }
}
