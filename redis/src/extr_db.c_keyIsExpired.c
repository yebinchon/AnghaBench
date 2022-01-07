
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int robj ;
typedef int redisDb ;
typedef scalar_t__ mstime_t ;
struct TYPE_2__ {scalar_t__ lua_time_start; scalar_t__ call_depth; scalar_t__ mstime; scalar_t__ lua_caller; scalar_t__ loading; } ;


 scalar_t__ getExpire (int *,int *) ;
 scalar_t__ mstime () ;
 TYPE_1__ server ;

int keyIsExpired(redisDb *db, robj *key) {
    mstime_t when = getExpire(db,key);
    mstime_t now;

    if (when < 0) return 0;


    if (server.loading) return 0;






    if (server.lua_caller) {
        now = server.lua_time_start;
    }







    else if (server.call_depth > 0) {
        now = server.mstime;
    }

    else {
        now = mstime();
    }



    return now > when;
}
