
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; char* auth_pass; TYPE_1__* link; TYPE_2__* master; } ;
typedef TYPE_3__ sentinelRedisInstance ;
typedef int redisAsyncContext ;
struct TYPE_8__ {char* auth_pass; } ;
struct TYPE_7__ {int pending_commands; } ;


 char* ACLDefaultUserFirstPassword () ;
 scalar_t__ C_OK ;
 int SRI_MASTER ;
 int SRI_SENTINEL ;
 int SRI_SLAVE ;
 scalar_t__ redisAsyncCommand (int *,int ,TYPE_3__*,char*,int ,char*) ;
 int sentinelDiscardReplyCallback ;
 int sentinelInstanceMapCommand (TYPE_3__*,char*) ;

void sentinelSendAuthIfNeeded(sentinelRedisInstance *ri, redisAsyncContext *c) {
    char *auth_pass = ((void*)0);

    if (ri->flags & SRI_MASTER) {
        auth_pass = ri->auth_pass;
    } else if (ri->flags & SRI_SLAVE) {
        auth_pass = ri->master->auth_pass;
    } else if (ri->flags & SRI_SENTINEL) {
        auth_pass = ACLDefaultUserFirstPassword();
    }

    if (auth_pass) {
        if (redisAsyncCommand(c, sentinelDiscardReplyCallback, ri, "%s %s",
            sentinelInstanceMapCommand(ri,"AUTH"),
            auth_pass) == C_OK) ri->link->pending_commands++;
    }
}
