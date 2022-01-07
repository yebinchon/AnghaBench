
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


struct TYPE_36__ {TYPE_3__* member_1; int member_0; } ;
typedef TYPE_5__ streamPropInfo ;
struct TYPE_37__ {int seq; } ;
typedef TYPE_6__ streamID ;
typedef int streamConsumer ;
struct TYPE_38__ {TYPE_6__ last_id; } ;
typedef TYPE_7__ streamCG ;
struct TYPE_39__ {int last_id; } ;
typedef TYPE_8__ stream ;
struct TYPE_40__ {TYPE_8__* ptr; } ;
typedef TYPE_9__ robj ;
struct TYPE_30__ {int key; TYPE_1__* db; } ;
typedef TYPE_10__ readyList ;
typedef int listNode ;
typedef int listIter ;
typedef int list ;
typedef int dictEntry ;
struct TYPE_35__ {int xread_group_noack; int xread_count; TYPE_3__* xread_group; TYPE_2__* xread_consumer; int keys; } ;
struct TYPE_31__ {scalar_t__ btype; int resp; TYPE_4__ bpop; } ;
typedef TYPE_11__ client ;
struct TYPE_34__ {int ptr; } ;
struct TYPE_33__ {int ptr; } ;
struct TYPE_32__ {int blocking_keys; } ;


 scalar_t__ BLOCKED_STREAM ;
 int addReplyArrayLen (TYPE_11__*,int) ;
 int addReplyBulk (TYPE_11__*,int ) ;
 int addReplyError (TYPE_11__*,char*) ;
 int addReplyMapLen (TYPE_11__*,int) ;
 TYPE_6__* dictFetchValue (int ,int ) ;
 int * dictFind (int ,int ) ;
 int * dictGetVal (int *) ;
 int * listNext (int *) ;
 TYPE_11__* listNodeValue (int *) ;
 int listRewind (int *,int *) ;
 scalar_t__ streamCompareID (int *,TYPE_6__*) ;
 TYPE_7__* streamLookupCG (TYPE_8__*,int ) ;
 int * streamLookupConsumer (TYPE_7__*,int ,int) ;
 int streamReplyWithRange (TYPE_11__*,TYPE_8__*,TYPE_6__*,int *,int ,int ,TYPE_7__*,int *,int,TYPE_5__*) ;
 int unblockClient (TYPE_11__*) ;

void serveClientsBlockedOnStreamKey(robj *o, readyList *rl) {
    dictEntry *de = dictFind(rl->db->blocking_keys,rl->key);
    stream *s = o->ptr;




    if (de) {
        list *clients = dictGetVal(de);
        listNode *ln;
        listIter li;
        listRewind(clients,&li);

        while((ln = listNext(&li))) {
            client *receiver = listNodeValue(ln);
            if (receiver->btype != BLOCKED_STREAM) continue;
            streamID *gt = dictFetchValue(receiver->bpop.keys,
                                          rl->key);
            streamCG *group = ((void*)0);
            if (receiver->bpop.xread_group) {
                group = streamLookupCG(s,
                        receiver->bpop.xread_group->ptr);


                if (!group) {
                    addReplyError(receiver,
                        "-NOGROUP the consumer group this client "
                        "was blocked on no longer exists");
                    unblockClient(receiver);
                    continue;
                } else {
                    *gt = group->last_id;
                }
            }

            if (streamCompareID(&s->last_id, gt) > 0) {
                streamID start = *gt;
                start.seq++;


                streamConsumer *consumer = ((void*)0);
                int noack = 0;

                if (group) {
                    consumer = streamLookupConsumer(group,
                               receiver->bpop.xread_consumer->ptr,
                               1);
                    noack = receiver->bpop.xread_group_noack;
                }





                if (receiver->resp == 2) {
                    addReplyArrayLen(receiver,1);
                    addReplyArrayLen(receiver,2);
                } else {
                    addReplyMapLen(receiver,1);
                }
                addReplyBulk(receiver,rl->key);

                streamPropInfo pi = {
                    rl->key,
                    receiver->bpop.xread_group
                };
                streamReplyWithRange(receiver,s,&start,((void*)0),
                                     receiver->bpop.xread_count,
                                     0, group, consumer, noack, &pi);





                unblockClient(receiver);
            }
        }
    }
}
