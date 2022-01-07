
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int down_after_period; int flags; scalar_t__ role_reported; int role_reported_time; int s_down_since_time; TYPE_4__* link; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int mstime_t ;
struct TYPE_6__ {int act_ping_time; int last_avail_time; scalar_t__ cc_conn_time; int last_pong_time; scalar_t__ pc_conn_time; int pc_last_activity; scalar_t__ pc; scalar_t__ cc; scalar_t__ disconnected; } ;


 int LL_WARNING ;
 int SENTINEL_INFO_PERIOD ;
 scalar_t__ SENTINEL_MIN_LINK_RECONNECT_PERIOD ;
 int SENTINEL_PUBLISH_PERIOD ;
 int SRI_MASTER ;
 int SRI_SCRIPT_KILL_SENT ;
 scalar_t__ SRI_SLAVE ;
 int SRI_S_DOWN ;
 int instanceLinkCloseConnection (TYPE_4__*,scalar_t__) ;
 int mstime () ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*) ;

void sentinelCheckSubjectivelyDown(sentinelRedisInstance *ri) {
    mstime_t elapsed = 0;

    if (ri->link->act_ping_time)
        elapsed = mstime() - ri->link->act_ping_time;
    else if (ri->link->disconnected)
        elapsed = mstime() - ri->link->last_avail_time;







    if (ri->link->cc &&
        (mstime() - ri->link->cc_conn_time) >
        SENTINEL_MIN_LINK_RECONNECT_PERIOD &&
        ri->link->act_ping_time != 0 &&


        (mstime() - ri->link->act_ping_time) > (ri->down_after_period/2) &&
        (mstime() - ri->link->last_pong_time) > (ri->down_after_period/2))
    {
        instanceLinkCloseConnection(ri->link,ri->link->cc);
    }






    if (ri->link->pc &&
        (mstime() - ri->link->pc_conn_time) >
         SENTINEL_MIN_LINK_RECONNECT_PERIOD &&
        (mstime() - ri->link->pc_last_activity) > (SENTINEL_PUBLISH_PERIOD*3))
    {
        instanceLinkCloseConnection(ri->link,ri->link->pc);
    }







    if (elapsed > ri->down_after_period ||
        (ri->flags & SRI_MASTER &&
         ri->role_reported == SRI_SLAVE &&
         mstime() - ri->role_reported_time >
          (ri->down_after_period+SENTINEL_INFO_PERIOD*2)))
    {

        if ((ri->flags & SRI_S_DOWN) == 0) {
            sentinelEvent(LL_WARNING,"+sdown",ri,"%@");
            ri->s_down_since_time = mstime();
            ri->flags |= SRI_S_DOWN;
        }
    } else {

        if (ri->flags & SRI_S_DOWN) {
            sentinelEvent(LL_WARNING,"-sdown",ri,"%@");
            ri->flags &= ~(SRI_S_DOWN|SRI_SCRIPT_KILL_SENT);
        }
    }
}
