
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* link; } ;
typedef TYPE_2__ sentinelRedisInstance ;
typedef int portstr ;
struct TYPE_6__ {int pending_commands; int cc; } ;


 int C_ERR ;
 int C_OK ;
 int ll2string (char*,int,int) ;
 int memcpy (char*,char*,int) ;
 int redisAsyncCommand (int ,int ,TYPE_2__*,char*,int ,...) ;
 int sentinelDiscardReplyCallback ;
 int sentinelInstanceMapCommand (TYPE_2__*,char*) ;

int sentinelSendSlaveOf(sentinelRedisInstance *ri, char *host, int port) {
    char portstr[32];
    int retval;

    ll2string(portstr,sizeof(portstr),port);



    if (host == ((void*)0)) {
        host = "NO";
        memcpy(portstr,"ONE",4);
    }
    retval = redisAsyncCommand(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s",
        sentinelInstanceMapCommand(ri,"MULTI"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    retval = redisAsyncCommand(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s %s %s",
        sentinelInstanceMapCommand(ri,"SLAVEOF"),
        host, portstr);
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    retval = redisAsyncCommand(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s REWRITE",
        sentinelInstanceMapCommand(ri,"CONFIG"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;






    retval = redisAsyncCommand(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s KILL TYPE normal",
        sentinelInstanceMapCommand(ri,"CLIENT"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    retval = redisAsyncCommand(ri->link->cc,
        sentinelDiscardReplyCallback, ri, "%s",
        sentinelInstanceMapCommand(ri,"EXEC"));
    if (retval == C_ERR) return retval;
    ri->link->pending_commands++;

    return C_OK;
}
