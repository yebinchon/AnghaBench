
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* pattern; TYPE_3__* client; } ;
typedef TYPE_1__ robj ;
typedef TYPE_1__ pubsubPattern ;
typedef int listNode ;
struct TYPE_13__ {int pubsub_patterns; } ;
typedef TYPE_3__ client ;
struct TYPE_14__ {int pubsub_patterns; } ;


 int addReplyPubsubPatUnsubscribed (TYPE_3__*,TYPE_1__*) ;
 int decrRefCount (TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 int listDelNode (int ,int *) ;
 int * listSearchKey (int ,TYPE_1__*) ;
 TYPE_4__ server ;

int pubsubUnsubscribePattern(client *c, robj *pattern, int notify) {
    listNode *ln;
    pubsubPattern pat;
    int retval = 0;

    incrRefCount(pattern);
    if ((ln = listSearchKey(c->pubsub_patterns,pattern)) != ((void*)0)) {
        retval = 1;
        listDelNode(c->pubsub_patterns,ln);
        pat.client = c;
        pat.pattern = pattern;
        ln = listSearchKey(server.pubsub_patterns,&pat);
        listDelNode(server.pubsub_patterns,ln);
    }

    if (notify) addReplyPubsubPatUnsubscribed(c,pattern);
    decrRefCount(pattern);
    return retval;
}
