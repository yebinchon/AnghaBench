
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_5__ {int pubsub_channels; } ;
typedef TYPE_1__ client ;


 int addReplyPubsubUnsubscribed (TYPE_1__*,int *) ;
 int * dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ pubsubUnsubscribeChannel (TYPE_1__*,int *,int) ;

int pubsubUnsubscribeAllChannels(client *c, int notify) {
    dictIterator *di = dictGetSafeIterator(c->pubsub_channels);
    dictEntry *de;
    int count = 0;

    while((de = dictNext(di)) != ((void*)0)) {
        robj *channel = dictGetKey(de);

        count += pubsubUnsubscribeChannel(c,channel,notify);
    }

    if (notify && count == 0) addReplyPubsubUnsubscribed(c,((void*)0));
    dictReleaseIterator(di);
    return count;
}
