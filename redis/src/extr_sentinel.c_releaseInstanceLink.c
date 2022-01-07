
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_14__ {TYPE_1__* link; } ;
typedef TYPE_2__ sentinelRedisInstance ;
struct TYPE_15__ {TYPE_4__* head; } ;
typedef TYPE_3__ redisCallbackList ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_2__* privdata; int fn; } ;
typedef TYPE_4__ redisCallback ;
struct TYPE_17__ {scalar_t__ refcount; TYPE_11__* pc; TYPE_11__* cc; } ;
typedef TYPE_5__ instanceLink ;
struct TYPE_13__ {scalar_t__ cc; } ;
struct TYPE_12__ {TYPE_3__ replies; } ;


 int instanceLinkCloseConnection (TYPE_5__*,TYPE_11__*) ;
 int sentinelDiscardReplyCallback ;
 int serverAssert (int) ;
 int zfree (TYPE_5__*) ;

instanceLink *releaseInstanceLink(instanceLink *link, sentinelRedisInstance *ri)
{
    serverAssert(link->refcount > 0);
    link->refcount--;
    if (link->refcount != 0) {
        if (ri && ri->link->cc) {





            redisCallback *cb;
            redisCallbackList *callbacks = &link->cc->replies;

            cb = callbacks->head;
            while(cb) {
                if (cb->privdata == ri) {
                    cb->fn = sentinelDiscardReplyCallback;
                    cb->privdata = ((void*)0);
                }
                cb = cb->next;
            }
        }
        return link;
    }

    instanceLinkCloseConnection(link,link->cc);
    instanceLinkCloseConnection(link,link->pc);
    zfree(link);
    return ((void*)0);
}
