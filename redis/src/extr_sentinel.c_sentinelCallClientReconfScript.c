
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int toport ;
struct TYPE_6__ {int name; int * client_reconfig_script; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_7__ {int ip; int port; } ;
typedef TYPE_2__ sentinelAddr ;
typedef int fromport ;


 int SENTINEL_LEADER ;
 int ll2string (char*,int,int ) ;
 int sentinelScheduleScriptExecution (int *,int ,char*,char*,int ,char*,int ,char*,int *) ;

void sentinelCallClientReconfScript(sentinelRedisInstance *master, int role, char *state, sentinelAddr *from, sentinelAddr *to) {
    char fromport[32], toport[32];

    if (master->client_reconfig_script == ((void*)0)) return;
    ll2string(fromport,sizeof(fromport),from->port);
    ll2string(toport,sizeof(toport),to->port);
    sentinelScheduleScriptExecution(master->client_reconfig_script,
        master->name,
        (role == SENTINEL_LEADER) ? "leader" : "observer",
        state, from->ip, fromport, to->ip, toport, ((void*)0));
}
