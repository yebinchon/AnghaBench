
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
typedef int listNode ;
typedef int list ;
typedef int dictEntry ;
struct TYPE_7__ {int pubsub_channels; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int pubsub_channels; } ;


 scalar_t__ DICT_OK ;
 int addReplyPubsubUnsubscribed (TYPE_1__*,int *) ;
 int decrRefCount (int *) ;
 scalar_t__ dictDelete (int ,int *) ;
 int * dictFind (int ,int *) ;
 int * dictGetVal (int *) ;
 int incrRefCount (int *) ;
 int listDelNode (int *,int *) ;
 scalar_t__ listLength (int *) ;
 int * listSearchKey (int *,TYPE_1__*) ;
 TYPE_3__ server ;
 int serverAssertWithInfo (TYPE_1__*,int *,int ) ;

int pubsubUnsubscribeChannel(client *c, robj *channel, int notify) {
    dictEntry *de;
    list *clients;
    listNode *ln;
    int retval = 0;


    incrRefCount(channel);

    if (dictDelete(c->pubsub_channels,channel) == DICT_OK) {
        retval = 1;

        de = dictFind(server.pubsub_channels,channel);
        serverAssertWithInfo(c,((void*)0),de != ((void*)0));
        clients = dictGetVal(de);
        ln = listSearchKey(clients,c);
        serverAssertWithInfo(c,((void*)0),ln != ((void*)0));
        listDelNode(clients,ln);
        if (listLength(clients) == 0) {



            dictDelete(server.pubsub_channels,channel);
        }
    }

    if (notify) addReplyPubsubUnsubscribed(c,channel);
    decrRefCount(channel);
    return retval;
}
