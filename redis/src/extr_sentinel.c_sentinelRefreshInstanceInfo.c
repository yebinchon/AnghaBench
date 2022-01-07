
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_21__ {char* info; int master_link_down_time; char* runid; int flags; char* slave_master_host; scalar_t__ slave_conf_change_time; int slave_master_port; scalar_t__ slave_master_link_status; int role_reported; scalar_t__ role_reported_time; scalar_t__ failover_state; scalar_t__ failover_timeout; TYPE_2__* promoted_slave; struct TYPE_21__* master; TYPE_12__* addr; scalar_t__ failover_state_change_time; int failover_epoch; int config_epoch; scalar_t__ info_refresh; int slave_repl_offset; void* slave_priority; int quorum; } ;
typedef TYPE_3__ sentinelRedisInstance ;
typedef char* sds ;
typedef scalar_t__ mstime_t ;
struct TYPE_20__ {TYPE_1__* addr; } ;
struct TYPE_19__ {scalar_t__ port; int ip; } ;
struct TYPE_18__ {int simfailure_flags; scalar_t__ tilt; } ;
struct TYPE_17__ {char* ip; scalar_t__ port; } ;


 int C_OK ;
 int LL_NOTICE ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 scalar_t__ SENTINEL_FAILOVER_STATE_RECONF_SLAVES ;
 scalar_t__ SENTINEL_FAILOVER_STATE_WAIT_PROMOTION ;
 int SENTINEL_LEADER ;
 scalar_t__ SENTINEL_MASTER_LINK_STATUS_DOWN ;
 scalar_t__ SENTINEL_MASTER_LINK_STATUS_UP ;
 int SENTINEL_PUBLISH_PERIOD ;
 int SENTINEL_SIMFAILURE_CRASH_AFTER_PROMOTION ;
 int SRI_FAILOVER_IN_PROGRESS ;
 int SRI_MASTER ;
 int SRI_PROMOTED ;
 int SRI_RECONF_DONE ;
 int SRI_RECONF_INPROG ;
 int SRI_RECONF_SENT ;
 int SRI_SLAVE ;
 void* atoi (char*) ;
 TYPE_3__* createSentinelRedisInstance (int *,int,char*,void*,int ,TYPE_3__*) ;
 scalar_t__ isdigit (char) ;
 int memcmp (char*,char*,int) ;
 scalar_t__ mstime () ;
 int sdsfree (char*) ;
 int sdsfreesplitres (char**,int) ;
 int sdslen (char*) ;
 void* sdsnew (char const*) ;
 void* sdsnewlen (char*,int) ;
 char** sdssplitlen (char const*,int ,char*,int,int*) ;
 TYPE_14__ sentinel ;
 int sentinelCallClientReconfScript (TYPE_3__*,int ,char*,TYPE_12__*,TYPE_12__*) ;
 int sentinelEvent (int ,char*,TYPE_3__*,char*,...) ;
 int sentinelFlushConfig () ;
 int sentinelForceHelloUpdateForMaster (TYPE_3__*) ;
 scalar_t__ sentinelMasterLooksSane (TYPE_3__*) ;
 int * sentinelRedisInstanceLookupSlave (TYPE_3__*,char*,void*) ;
 scalar_t__ sentinelRedisInstanceNoDownFor (TYPE_3__*,scalar_t__) ;
 int sentinelSendSlaveOf (TYPE_3__*,char*,scalar_t__) ;
 int sentinelSimFailureCrash () ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int strtoll (char*,int *,int) ;
 int strtoull (char*,int *,int) ;

void sentinelRefreshInstanceInfo(sentinelRedisInstance *ri, const char *info) {
    sds *lines;
    int numlines, j;
    int role = 0;


    sdsfree(ri->info);
    ri->info = sdsnew(info);



    ri->master_link_down_time = 0;


    lines = sdssplitlen(info,strlen(info),"\r\n",2,&numlines);
    for (j = 0; j < numlines; j++) {
        sentinelRedisInstance *slave;
        sds l = lines[j];


        if (sdslen(l) >= 47 && !memcmp(l,"run_id:",7)) {
            if (ri->runid == ((void*)0)) {
                ri->runid = sdsnewlen(l+7,40);
            } else {
                if (strncmp(ri->runid,l+7,40) != 0) {
                    sentinelEvent(LL_NOTICE,"+reboot",ri,"%@");
                    sdsfree(ri->runid);
                    ri->runid = sdsnewlen(l+7,40);
                }
            }
        }



        if ((ri->flags & SRI_MASTER) &&
            sdslen(l) >= 7 &&
            !memcmp(l,"slave",5) && isdigit(l[5]))
        {
            char *ip, *port, *end;

            if (strstr(l,"ip=") == ((void*)0)) {

                ip = strchr(l,':'); if (!ip) continue;
                ip++;
                port = strchr(ip,','); if (!port) continue;
                *port = '\0';
                port++;
                end = strchr(port,','); if (!end) continue;
                *end = '\0';
            } else {

                ip = strstr(l,"ip="); if (!ip) continue;
                ip += 3;
                port = strstr(l,"port="); if (!port) continue;
                port += 5;

                end = strchr(ip,','); if (end) *end = '\0';
                end = strchr(port,','); if (end) *end = '\0';
            }



            if (sentinelRedisInstanceLookupSlave(ri,ip,atoi(port)) == ((void*)0)) {
                if ((slave = createSentinelRedisInstance(((void*)0),SRI_SLAVE,ip,
                            atoi(port), ri->quorum, ri)) != ((void*)0))
                {
                    sentinelEvent(LL_NOTICE,"+slave",slave,"%@");
                    sentinelFlushConfig();
                }
            }
        }


        if (sdslen(l) >= 32 &&
            !memcmp(l,"master_link_down_since_seconds",30))
        {
            ri->master_link_down_time = strtoll(l+31,((void*)0),10)*1000;
        }


        if (!memcmp(l,"role:master",11)) role = SRI_MASTER;
        else if (!memcmp(l,"role:slave",10)) role = SRI_SLAVE;

        if (role == SRI_SLAVE) {

            if (sdslen(l) >= 12 && !memcmp(l,"master_host:",12)) {
                if (ri->slave_master_host == ((void*)0) ||
                    strcasecmp(l+12,ri->slave_master_host))
                {
                    sdsfree(ri->slave_master_host);
                    ri->slave_master_host = sdsnew(l+12);
                    ri->slave_conf_change_time = mstime();
                }
            }


            if (sdslen(l) >= 12 && !memcmp(l,"master_port:",12)) {
                int slave_master_port = atoi(l+12);

                if (ri->slave_master_port != slave_master_port) {
                    ri->slave_master_port = slave_master_port;
                    ri->slave_conf_change_time = mstime();
                }
            }


            if (sdslen(l) >= 19 && !memcmp(l,"master_link_status:",19)) {
                ri->slave_master_link_status =
                    (strcasecmp(l+19,"up") == 0) ?
                    SENTINEL_MASTER_LINK_STATUS_UP :
                    SENTINEL_MASTER_LINK_STATUS_DOWN;
            }


            if (sdslen(l) >= 15 && !memcmp(l,"slave_priority:",15))
                ri->slave_priority = atoi(l+15);


            if (sdslen(l) >= 18 && !memcmp(l,"slave_repl_offset:",18))
                ri->slave_repl_offset = strtoull(l+18,((void*)0),10);
        }
    }
    ri->info_refresh = mstime();
    sdsfreesplitres(lines,numlines);






    if (role != ri->role_reported) {
        ri->role_reported_time = mstime();
        ri->role_reported = role;
        if (role == SRI_SLAVE) ri->slave_conf_change_time = mstime();


        sentinelEvent(LL_VERBOSE,
            ((ri->flags & (SRI_MASTER|SRI_SLAVE)) == role) ?
            "+role-change" : "-role-change",
            ri, "%@ new reported role is %s",
            role == SRI_MASTER ? "master" : "slave",
            ri->flags & SRI_MASTER ? "master" : "slave");
    }



    if (sentinel.tilt) return;


    if ((ri->flags & SRI_MASTER) && role == SRI_SLAVE) {



    }


    if ((ri->flags & SRI_SLAVE) && role == SRI_MASTER) {


        if ((ri->flags & SRI_PROMOTED) &&
            (ri->master->flags & SRI_FAILOVER_IN_PROGRESS) &&
            (ri->master->failover_state ==
                SENTINEL_FAILOVER_STATE_WAIT_PROMOTION))
        {





            ri->master->config_epoch = ri->master->failover_epoch;
            ri->master->failover_state = SENTINEL_FAILOVER_STATE_RECONF_SLAVES;
            ri->master->failover_state_change_time = mstime();
            sentinelFlushConfig();
            sentinelEvent(LL_WARNING,"+promoted-slave",ri,"%@");
            if (sentinel.simfailure_flags &
                SENTINEL_SIMFAILURE_CRASH_AFTER_PROMOTION)
                sentinelSimFailureCrash();
            sentinelEvent(LL_WARNING,"+failover-state-reconf-slaves",
                ri->master,"%@");
            sentinelCallClientReconfScript(ri->master,SENTINEL_LEADER,
                "start",ri->master->addr,ri->addr);
            sentinelForceHelloUpdateForMaster(ri->master);
        } else {



            mstime_t wait_time = SENTINEL_PUBLISH_PERIOD*4;

            if (!(ri->flags & SRI_PROMOTED) &&
                 sentinelMasterLooksSane(ri->master) &&
                 sentinelRedisInstanceNoDownFor(ri,wait_time) &&
                 mstime() - ri->role_reported_time > wait_time)
            {
                int retval = sentinelSendSlaveOf(ri,
                        ri->master->addr->ip,
                        ri->master->addr->port);
                if (retval == C_OK)
                    sentinelEvent(LL_NOTICE,"+convert-to-slave",ri,"%@");
            }
        }
    }


    if ((ri->flags & SRI_SLAVE) &&
        role == SRI_SLAVE &&
        (ri->slave_master_port != ri->master->addr->port ||
         strcasecmp(ri->slave_master_host,ri->master->addr->ip)))
    {
        mstime_t wait_time = ri->master->failover_timeout;



        if (sentinelMasterLooksSane(ri->master) &&
            sentinelRedisInstanceNoDownFor(ri,wait_time) &&
            mstime() - ri->slave_conf_change_time > wait_time)
        {
            int retval = sentinelSendSlaveOf(ri,
                    ri->master->addr->ip,
                    ri->master->addr->port);
            if (retval == C_OK)
                sentinelEvent(LL_NOTICE,"+fix-slave-config",ri,"%@");
        }
    }



    if ((ri->flags & SRI_SLAVE) && role == SRI_SLAVE &&
        (ri->flags & (SRI_RECONF_SENT|SRI_RECONF_INPROG)))
    {

        if ((ri->flags & SRI_RECONF_SENT) &&
            ri->slave_master_host &&
            strcmp(ri->slave_master_host,
                    ri->master->promoted_slave->addr->ip) == 0 &&
            ri->slave_master_port == ri->master->promoted_slave->addr->port)
        {
            ri->flags &= ~SRI_RECONF_SENT;
            ri->flags |= SRI_RECONF_INPROG;
            sentinelEvent(LL_NOTICE,"+slave-reconf-inprog",ri,"%@");
        }


        if ((ri->flags & SRI_RECONF_INPROG) &&
            ri->slave_master_link_status == SENTINEL_MASTER_LINK_STATUS_UP)
        {
            ri->flags &= ~SRI_RECONF_INPROG;
            ri->flags |= SRI_RECONF_DONE;
            sentinelEvent(LL_NOTICE,"+slave-reconf-done",ri,"%@");
        }
    }
}
