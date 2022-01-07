
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* link; } ;
typedef TYPE_3__ sentinelRedisInstance ;
struct TYPE_9__ {scalar_t__ type; int elements; TYPE_2__** element; } ;
typedef TYPE_4__ redisReply ;
typedef int redisAsyncContext ;
struct TYPE_10__ {int myid; } ;
struct TYPE_7__ {scalar_t__ type; int len; int str; } ;
struct TYPE_6__ {int pc_last_activity; } ;


 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_STRING ;
 int UNUSED (int *) ;
 int mstime () ;
 TYPE_5__ sentinel ;
 int sentinelProcessHelloMessage (int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int * strstr (int ,int ) ;

void sentinelReceiveHelloMessages(redisAsyncContext *c, void *reply, void *privdata) {
    sentinelRedisInstance *ri = privdata;
    redisReply *r;
    UNUSED(c);

    if (!reply || !ri) return;
    r = reply;




    ri->link->pc_last_activity = mstime();



    if (r->type != REDIS_REPLY_ARRAY ||
        r->elements != 3 ||
        r->element[0]->type != REDIS_REPLY_STRING ||
        r->element[1]->type != REDIS_REPLY_STRING ||
        r->element[2]->type != REDIS_REPLY_STRING ||
        strcmp(r->element[0]->str,"message") != 0) return;


    if (strstr(r->element[2]->str,sentinel.myid) != ((void*)0)) return;

    sentinelProcessHelloMessage(r->element[2]->str, r->element[2]->len);
}
