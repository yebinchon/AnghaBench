
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* link; } ;
typedef TYPE_2__ sentinelRedisInstance ;
typedef int redisAsyncContext ;
typedef int name ;
struct TYPE_9__ {char* myid; } ;
struct TYPE_7__ {int pending_commands; } ;


 scalar_t__ C_OK ;
 scalar_t__ redisAsyncCommand (int *,int ,TYPE_2__*,char*,int ,char*) ;
 TYPE_5__ sentinel ;
 int sentinelDiscardReplyCallback ;
 int sentinelInstanceMapCommand (TYPE_2__*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

void sentinelSetClientName(sentinelRedisInstance *ri, redisAsyncContext *c, char *type) {
    char name[64];

    snprintf(name,sizeof(name),"sentinel-%.8s-%s",sentinel.myid,type);
    if (redisAsyncCommand(c, sentinelDiscardReplyCallback, ri,
        "%s SETNAME %s",
        sentinelInstanceMapCommand(ri,"CLIENT"),
        name) == C_OK)
    {
        ri->link->pending_commands++;
    }
}
