
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* client; int pattern; } ;
typedef TYPE_1__ robj ;
typedef TYPE_1__ pubsubPattern ;
struct TYPE_15__ {int pubsub_patterns; } ;
typedef TYPE_3__ client ;
struct TYPE_16__ {int pubsub_patterns; } ;


 int addReplyPubsubPatSubscribed (TYPE_3__*,TYPE_1__*) ;
 int getDecodedObject (TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 int * listSearchKey (int ,TYPE_1__*) ;
 TYPE_5__ server ;
 TYPE_1__* zmalloc (int) ;

int pubsubSubscribePattern(client *c, robj *pattern) {
    int retval = 0;

    if (listSearchKey(c->pubsub_patterns,pattern) == ((void*)0)) {
        retval = 1;
        pubsubPattern *pat;
        listAddNodeTail(c->pubsub_patterns,pattern);
        incrRefCount(pattern);
        pat = zmalloc(sizeof(*pat));
        pat->pattern = getDecodedObject(pattern);
        pat->client = c;
        listAddNodeTail(server.pubsub_patterns,pat);
    }

    addReplyPubsubPatSubscribed(c,pattern);
    return retval;
}
