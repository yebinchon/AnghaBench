
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int last_pub_time; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_8__ {TYPE_4__* data; } ;
typedef TYPE_3__ redisAsyncContext ;
struct TYPE_9__ {int pending_commands; } ;
typedef TYPE_4__ instanceLink ;


 scalar_t__ REDIS_REPLY_ERROR ;
 int mstime () ;

void sentinelPublishReplyCallback(redisAsyncContext *c, void *reply, void *privdata) {
    sentinelRedisInstance *ri = privdata;
    instanceLink *link = c->data;
    redisReply *r;

    if (!reply || !link) return;
    link->pending_commands--;
    r = reply;



    if (r->type != REDIS_REPLY_ERROR)
        ri->last_pub_time = mstime();
}
