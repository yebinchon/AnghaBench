#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long long config_epoch; int quorum; int /*<<< orphan*/  renamed_commands; void* runid; void* leader_epoch; void* auth_pass; void* client_reconfig_script; void* notification_script; void* parallel_syncs; void* failover_timeout; void* down_after_period; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  void* sds ;
struct TYPE_9__ {unsigned long long current_epoch; int deny_scripts_reconfig; void* announce_port; void* announce_ip; int /*<<< orphan*/  myid; } ;

/* Variables and functions */
 scalar_t__ CONFIG_RUN_ID_SIZE ; 
 scalar_t__ DICT_OK ; 
#define  EBUSY 130 
#define  EINVAL 129 
#define  ENOENT 128 
 int /*<<< orphan*/  SRI_MASTER ; 
 int /*<<< orphan*/  SRI_SENTINEL ; 
 int /*<<< orphan*/  SRI_SLAVE ; 
 int /*<<< orphan*/  X_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,int /*<<< orphan*/ ,char*,void*,int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (char*) ; 
 TYPE_5__ sentinel ; 
 TYPE_1__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 void* FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (char*) ; 

char *FUNC14(char **argv, int argc) {
    sentinelRedisInstance *ri;

    if (!FUNC10(argv[0],"monitor") && argc == 5) {
        /* monitor <name> <host> <port> <quorum> */
        int quorum = FUNC1(argv[4]);

        if (quorum <= 0) return "Quorum must be 1 or greater.";
        if (FUNC2(argv[1],SRI_MASTER,argv[2],
                                        FUNC1(argv[3]),quorum,NULL) == NULL)
        {
            switch(errno) {
            case EBUSY: return "Duplicated master name.";
            case ENOENT: return "Can't resolve master instance hostname.";
            case EINVAL: return "Invalid port number";
            }
        }
    } else if (!FUNC10(argv[0],"down-after-milliseconds") && argc == 3) {
        /* down-after-milliseconds <name> <milliseconds> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        ri->down_after_period = FUNC1(argv[2]);
        if (ri->down_after_period <= 0)
            return "negative or zero time parameter.";
        FUNC8(ri);
    } else if (!FUNC10(argv[0],"failover-timeout") && argc == 3) {
        /* failover-timeout <name> <milliseconds> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        ri->failover_timeout = FUNC1(argv[2]);
        if (ri->failover_timeout <= 0)
            return "negative or zero time parameter.";
   } else if (!FUNC10(argv[0],"parallel-syncs") && argc == 3) {
        /* parallel-syncs <name> <milliseconds> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        ri->parallel_syncs = FUNC1(argv[2]);
   } else if (!FUNC10(argv[0],"notification-script") && argc == 3) {
        /* notification-script <name> <path> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        if (FUNC0(argv[2],X_OK) == -1)
            return "Notification script seems non existing or non executable.";
        ri->notification_script = FUNC6(argv[2]);
   } else if (!FUNC10(argv[0],"client-reconfig-script") && argc == 3) {
        /* client-reconfig-script <name> <path> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        if (FUNC0(argv[2],X_OK) == -1)
            return "Client reconfiguration script seems non existing or "
                   "non executable.";
        ri->client_reconfig_script = FUNC6(argv[2]);
   } else if (!FUNC10(argv[0],"auth-pass") && argc == 3) {
        /* auth-pass <name> <password> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        ri->auth_pass = FUNC6(argv[2]);
    } else if (!FUNC10(argv[0],"current-epoch") && argc == 2) {
        /* current-epoch <epoch> */
        unsigned long long current_epoch = FUNC12(argv[1],NULL,10);
        if (current_epoch > sentinel.current_epoch)
            sentinel.current_epoch = current_epoch;
    } else if (!FUNC10(argv[0],"myid") && argc == 2) {
        if (FUNC11(argv[1]) != CONFIG_RUN_ID_SIZE)
            return "Malformed Sentinel id in myid option.";
        FUNC4(sentinel.myid,argv[1],CONFIG_RUN_ID_SIZE);
    } else if (!FUNC10(argv[0],"config-epoch") && argc == 3) {
        /* config-epoch <name> <epoch> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        ri->config_epoch = FUNC12(argv[2],NULL,10);
        /* The following update of current_epoch is not really useful as
         * now the current epoch is persisted on the config file, but
         * we leave this check here for redundancy. */
        if (ri->config_epoch > sentinel.current_epoch)
            sentinel.current_epoch = ri->config_epoch;
    } else if (!FUNC10(argv[0],"leader-epoch") && argc == 3) {
        /* leader-epoch <name> <epoch> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        ri->leader_epoch = FUNC12(argv[2],NULL,10);
    } else if ((!FUNC10(argv[0],"known-slave") ||
                !FUNC10(argv[0],"known-replica")) && argc == 4)
    {
        sentinelRedisInstance *slave;

        /* known-replica <name> <ip> <port> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        if ((slave = FUNC2(NULL,SRI_SLAVE,argv[2],
                    FUNC1(argv[3]), ri->quorum, ri)) == NULL)
        {
            return "Wrong hostname or port for replica.";
        }
    } else if (!FUNC10(argv[0],"known-sentinel") &&
               (argc == 4 || argc == 5)) {
        sentinelRedisInstance *si;

        if (argc == 5) { /* Ignore the old form without runid. */
            /* known-sentinel <name> <ip> <port> [runid] */
            ri = FUNC7(argv[1]);
            if (!ri) return "No such master with specified name.";
            if ((si = FUNC2(argv[4],SRI_SENTINEL,argv[2],
                        FUNC1(argv[3]), ri->quorum, ri)) == NULL)
            {
                return "Wrong hostname or port for sentinel.";
            }
            si->runid = FUNC6(argv[4]);
            FUNC9(si);
        }
    } else if (!FUNC10(argv[0],"rename-command") && argc == 4) {
        /* rename-command <name> <command> <renamed-command> */
        ri = FUNC7(argv[1]);
        if (!ri) return "No such master with specified name.";
        sds oldcmd = FUNC6(argv[2]);
        sds newcmd = FUNC6(argv[3]);
        if (FUNC3(ri->renamed_commands,oldcmd,newcmd) != DICT_OK) {
            FUNC5(oldcmd);
            FUNC5(newcmd);
            return "Same command renamed multiple times with rename-command.";
        }
    } else if (!FUNC10(argv[0],"announce-ip") && argc == 2) {
        /* announce-ip <ip-address> */
        if (FUNC11(argv[1]))
            sentinel.announce_ip = FUNC6(argv[1]);
    } else if (!FUNC10(argv[0],"announce-port") && argc == 2) {
        /* announce-port <port> */
        sentinel.announce_port = FUNC1(argv[1]);
    } else if (!FUNC10(argv[0],"deny-scripts-reconfig") && argc == 2) {
        /* deny-scripts-reconfig <yes|no> */
        if ((sentinel.deny_scripts_reconfig = FUNC13(argv[1])) == -1) {
            return "Please specify yes or no for the "
                   "deny-scripts-reconfig options.";
        }
    } else {
        return "Unrecognized sentinel configuration statement.";
    }
    return NULL;
}