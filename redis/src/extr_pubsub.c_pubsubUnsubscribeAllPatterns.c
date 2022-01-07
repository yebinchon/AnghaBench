
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
struct TYPE_7__ {int * value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_8__ {int pubsub_patterns; } ;
typedef TYPE_2__ client ;


 int addReplyPubsubPatUnsubscribed (TYPE_2__*,int *) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 scalar_t__ pubsubUnsubscribePattern (TYPE_2__*,int *,int) ;

int pubsubUnsubscribeAllPatterns(client *c, int notify) {
    listNode *ln;
    listIter li;
    int count = 0;

    listRewind(c->pubsub_patterns,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        robj *pattern = ln->value;

        count += pubsubUnsubscribePattern(c,pattern,notify);
    }
    if (notify && count == 0) addReplyPubsubPatUnsubscribed(c,((void*)0));
    return count;
}
