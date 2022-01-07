
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sentinelRedisInstance ;
struct TYPE_5__ {scalar_t__ type; int str; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_6__ {TYPE_3__* data; } ;
typedef TYPE_2__ redisAsyncContext ;
struct TYPE_7__ {int pending_commands; } ;
typedef TYPE_3__ instanceLink ;


 scalar_t__ REDIS_REPLY_STRING ;
 int sentinelRefreshInstanceInfo (int *,int ) ;

void sentinelInfoReplyCallback(redisAsyncContext *c, void *reply, void *privdata) {
    sentinelRedisInstance *ri = privdata;
    instanceLink *link = c->data;
    redisReply *r;

    if (!reply || !link) return;
    link->pending_commands--;
    r = reply;

    if (r->type == REDIS_REPLY_STRING)
        sentinelRefreshInstanceInfo(ri,r->str);
}
