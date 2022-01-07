
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; TYPE_1__* master; int renamed_commands; int addr; int info; int auth_pass; int leader; int slave_master_host; int client_reconfig_script; int notification_script; int runid; int name; int link; int slaves; int sentinels; } ;
typedef TYPE_2__ sentinelRedisInstance ;
struct TYPE_6__ {int * promoted_slave; } ;


 int SRI_PROMOTED ;
 int SRI_SLAVE ;
 int dictRelease (int ) ;
 int releaseInstanceLink (int ,TYPE_2__*) ;
 int releaseSentinelAddr (int ) ;
 int sdsfree (int ) ;
 int zfree (TYPE_2__*) ;

void releaseSentinelRedisInstance(sentinelRedisInstance *ri) {

    dictRelease(ri->sentinels);
    dictRelease(ri->slaves);


    releaseInstanceLink(ri->link,ri);


    sdsfree(ri->name);
    sdsfree(ri->runid);
    sdsfree(ri->notification_script);
    sdsfree(ri->client_reconfig_script);
    sdsfree(ri->slave_master_host);
    sdsfree(ri->leader);
    sdsfree(ri->auth_pass);
    sdsfree(ri->info);
    releaseSentinelAddr(ri->addr);
    dictRelease(ri->renamed_commands);


    if ((ri->flags & SRI_SLAVE) && (ri->flags & SRI_PROMOTED) && ri->master)
        ri->master->promoted_slave = ((void*)0);

    zfree(ri);
}
