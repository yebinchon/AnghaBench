
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long avg_ttl; int expires; } ;
typedef TYPE_1__ redisDb ;
typedef int dictEntry ;
struct TYPE_5__ {int dbnum; int hz; double stat_expired_stale_perc; int stat_expired_time_cap_reached_count; TYPE_1__* db; } ;


 int ACTIVE_EXPIRE_CYCLE_FAST ;
 int ACTIVE_EXPIRE_CYCLE_FAST_DURATION ;
 int ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP ;
 int ACTIVE_EXPIRE_CYCLE_SLOW_TIME_PERC ;
 int CRON_DBS_PER_CALL ;
 unsigned long DICT_HT_INITIAL_SIZE ;
 scalar_t__ activeExpireCycleTryExpire (TYPE_1__*,int *,long long) ;
 scalar_t__ clientsArePaused () ;
 int * dictGetRandomKey (int ) ;
 long long dictGetSignedIntegerVal (int *) ;
 unsigned long dictSize (int ) ;
 unsigned long dictSlots (int ) ;
 int latencyAddSampleIfNeeded (char*,long long) ;
 long long mstime () ;
 TYPE_2__ server ;
 long long ustime () ;

void activeExpireCycle(int type) {


    static unsigned int current_db = 0;
    static int timelimit_exit = 0;
    static long long last_fast_cycle = 0;

    int j, iteration = 0;
    int dbs_per_call = CRON_DBS_PER_CALL;
    long long start = ustime(), timelimit, elapsed;




    if (clientsArePaused()) return;

    if (type == ACTIVE_EXPIRE_CYCLE_FAST) {



        if (!timelimit_exit) return;
        if (start < last_fast_cycle + ACTIVE_EXPIRE_CYCLE_FAST_DURATION*2) return;
        last_fast_cycle = start;
    }
    if (dbs_per_call > server.dbnum || timelimit_exit)
        dbs_per_call = server.dbnum;





    timelimit = 1000000*ACTIVE_EXPIRE_CYCLE_SLOW_TIME_PERC/server.hz/100;
    timelimit_exit = 0;
    if (timelimit <= 0) timelimit = 1;

    if (type == ACTIVE_EXPIRE_CYCLE_FAST)
        timelimit = ACTIVE_EXPIRE_CYCLE_FAST_DURATION;




    long total_sampled = 0;
    long total_expired = 0;

    for (j = 0; j < dbs_per_call && timelimit_exit == 0; j++) {
        int expired;
        redisDb *db = server.db+(current_db % server.dbnum);




        current_db++;



        do {
            unsigned long num, slots;
            long long now, ttl_sum;
            int ttl_samples;
            iteration++;


            if ((num = dictSize(db->expires)) == 0) {
                db->avg_ttl = 0;
                break;
            }
            slots = dictSlots(db->expires);
            now = mstime();




            if (num && slots > DICT_HT_INITIAL_SIZE &&
                (num*100/slots < 1)) break;



            expired = 0;
            ttl_sum = 0;
            ttl_samples = 0;

            if (num > ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP)
                num = ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP;

            while (num--) {
                dictEntry *de;
                long long ttl;

                if ((de = dictGetRandomKey(db->expires)) == ((void*)0)) break;
                ttl = dictGetSignedIntegerVal(de)-now;
                if (activeExpireCycleTryExpire(db,de,now)) expired++;
                if (ttl > 0) {

                    ttl_sum += ttl;
                    ttl_samples++;
                }
                total_sampled++;
            }
            total_expired += expired;


            if (ttl_samples) {
                long long avg_ttl = ttl_sum/ttl_samples;




                if (db->avg_ttl == 0) db->avg_ttl = avg_ttl;
                db->avg_ttl = (db->avg_ttl/50)*49 + (avg_ttl/50);
            }




            if ((iteration & 0xf) == 0) {
                elapsed = ustime()-start;
                if (elapsed > timelimit) {
                    timelimit_exit = 1;
                    server.stat_expired_time_cap_reached_count++;
                    break;
                }
            }


        } while (expired > ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP/4);
    }

    elapsed = ustime()-start;
    latencyAddSampleIfNeeded("expire-cycle",elapsed/1000);



    double current_perc;
    if (total_sampled) {
        current_perc = (double)total_expired/total_sampled;
    } else
        current_perc = 0;
    server.stat_expired_stale_perc = (current_perc*0.05)+
                                     (server.stat_expired_stale_perc*0.95);
}
