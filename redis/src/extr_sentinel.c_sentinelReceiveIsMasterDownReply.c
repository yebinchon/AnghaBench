
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {long long leader_epoch; int leader; int name; int flags; int last_master_down_reply_time; } ;
typedef TYPE_2__ sentinelRedisInstance ;
struct TYPE_9__ {scalar_t__ type; int elements; TYPE_1__** element; } ;
typedef TYPE_3__ redisReply ;
struct TYPE_10__ {TYPE_5__* data; } ;
typedef TYPE_4__ redisAsyncContext ;
struct TYPE_11__ {int pending_commands; } ;
typedef TYPE_5__ instanceLink ;
struct TYPE_7__ {scalar_t__ type; int integer; int str; } ;


 int LL_WARNING ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 scalar_t__ REDIS_REPLY_STRING ;
 int SRI_MASTER_DOWN ;
 int mstime () ;
 int sdsfree (int ) ;
 int sdsnew (int ) ;
 int serverLog (int ,char*,int ,int ,unsigned long long) ;
 scalar_t__ strcmp (int ,char*) ;

void sentinelReceiveIsMasterDownReply(redisAsyncContext *c, void *reply, void *privdata) {
    sentinelRedisInstance *ri = privdata;
    instanceLink *link = c->data;
    redisReply *r;

    if (!reply || !link) return;
    link->pending_commands--;
    r = reply;




    if (r->type == REDIS_REPLY_ARRAY && r->elements == 3 &&
        r->element[0]->type == REDIS_REPLY_INTEGER &&
        r->element[1]->type == REDIS_REPLY_STRING &&
        r->element[2]->type == REDIS_REPLY_INTEGER)
    {
        ri->last_master_down_reply_time = mstime();
        if (r->element[0]->integer == 1) {
            ri->flags |= SRI_MASTER_DOWN;
        } else {
            ri->flags &= ~SRI_MASTER_DOWN;
        }
        if (strcmp(r->element[1]->str,"*")) {


            sdsfree(ri->leader);
            if ((long long)ri->leader_epoch != r->element[2]->integer)
                serverLog(LL_WARNING,
                    "%s voted for %s %llu", ri->name,
                    r->element[1]->str,
                    (unsigned long long) r->element[2]->integer);
            ri->leader = sdsnew(r->element[1]->str);
            ri->leader_epoch = r->element[2]->integer;
        }
    }
}
