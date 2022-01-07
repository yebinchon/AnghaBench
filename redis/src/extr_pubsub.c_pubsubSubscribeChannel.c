
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int robj ;
typedef int list ;
typedef int dictEntry ;
struct TYPE_6__ {int pubsub_channels; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int pubsub_channels; } ;


 scalar_t__ DICT_OK ;
 int addReplyPubsubSubscribed (TYPE_1__*,int *) ;
 scalar_t__ dictAdd (int ,int *,int *) ;
 int * dictFind (int ,int *) ;
 int * dictGetVal (int *) ;
 int incrRefCount (int *) ;
 int listAddNodeTail (int *,TYPE_1__*) ;
 int * listCreate () ;
 TYPE_2__ server ;

int pubsubSubscribeChannel(client *c, robj *channel) {
    dictEntry *de;
    list *clients = ((void*)0);
    int retval = 0;


    if (dictAdd(c->pubsub_channels,channel,((void*)0)) == DICT_OK) {
        retval = 1;
        incrRefCount(channel);

        de = dictFind(server.pubsub_channels,channel);
        if (de == ((void*)0)) {
            clients = listCreate();
            dictAdd(server.pubsub_channels,channel,clients);
            incrRefCount(channel);
        } else {
            clients = dictGetVal(de);
        }
        listAddNodeTail(clients,c);
    }

    addReplyPubsubSubscribed(c,channel);
    return retval;
}
