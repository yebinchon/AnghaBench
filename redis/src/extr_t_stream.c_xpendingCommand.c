
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_14__ ;


struct TYPE_38__ {scalar_t__ delivery_time; scalar_t__ delivery_count; TYPE_1__* consumer; int * pel; } ;
typedef TYPE_2__ streamNACK ;
typedef int streamID ;
typedef TYPE_2__ streamConsumer ;
struct TYPE_39__ {int * pel; int * consumers; } ;
typedef TYPE_4__ streamCG ;
typedef int startkey ;
struct TYPE_40__ {scalar_t__ ptr; } ;
typedef TYPE_5__ robj ;
struct TYPE_41__ {int key; TYPE_2__* data; int key_len; } ;
typedef TYPE_6__ raxIterator ;
typedef int rax ;
typedef scalar_t__ mstime_t ;
struct TYPE_42__ {int argc; TYPE_5__** argv; int db; } ;
typedef TYPE_7__ client ;
struct TYPE_37__ {int name; } ;
struct TYPE_36__ {int syntaxerr; } ;


 scalar_t__ C_ERR ;
 int OBJ_STREAM ;
 int UINT64_MAX ;
 int addReply (TYPE_7__*,int ) ;
 int addReplyArrayLen (TYPE_7__*,int) ;
 int addReplyBulkCBuffer (TYPE_7__*,int ,int ) ;
 int addReplyBulkLongLong (TYPE_7__*,scalar_t__) ;
 void* addReplyDeferredLen (TYPE_7__*) ;
 int addReplyErrorFormat (TYPE_7__*,char*,char*,char*) ;
 int addReplyLongLong (TYPE_7__*,scalar_t__) ;
 int addReplyNull (TYPE_7__*) ;
 int addReplyNullArray (TYPE_7__*) ;
 int addReplyStreamID (TYPE_7__*,int *) ;
 scalar_t__ checkType (TYPE_7__*,TYPE_5__*,int ) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_7__*,TYPE_5__*,long long*,int *) ;
 TYPE_5__* lookupKeyRead (int ,TYPE_5__*) ;
 scalar_t__ memcmp (int ,unsigned char*,int ) ;
 scalar_t__ mstime () ;
 scalar_t__ raxNext (TYPE_6__*) ;
 int raxSeek (TYPE_6__*,char*,unsigned char*,int) ;
 scalar_t__ raxSize (int *) ;
 int raxStart (TYPE_6__*,int *) ;
 int raxStop (TYPE_6__*) ;
 int sdslen (int ) ;
 int setDeferredArrayLen (TYPE_7__*,void*,size_t) ;
 TYPE_14__ shared ;
 int streamDecodeID (int ,int *) ;
 int streamEncodeID (unsigned char*,int *) ;
 TYPE_4__* streamLookupCG (scalar_t__,scalar_t__) ;
 TYPE_2__* streamLookupConsumer (TYPE_4__*,scalar_t__,int ) ;
 scalar_t__ streamParseIDOrReply (TYPE_7__*,TYPE_5__*,int *,int ) ;

void xpendingCommand(client *c) {
    int justinfo = c->argc == 3;

    robj *key = c->argv[1];
    robj *groupname = c->argv[2];
    robj *consumername = (c->argc == 7) ? c->argv[6] : ((void*)0);
    streamID startid, endid;
    long long count;


    if (c->argc != 3 && c->argc != 6 && c->argc != 7) {
        addReply(c,shared.syntaxerr);
        return;
    }



    if (c->argc >= 6) {
        if (getLongLongFromObjectOrReply(c,c->argv[5],&count,((void*)0)) == C_ERR)
            return;
        if (count < 0) count = 0;
        if (streamParseIDOrReply(c,c->argv[3],&startid,0) == C_ERR)
            return;
        if (streamParseIDOrReply(c,c->argv[4],&endid,UINT64_MAX) == C_ERR)
            return;
    }


    robj *o = lookupKeyRead(c->db,c->argv[1]);
    streamCG *group;

    if (o && checkType(c,o,OBJ_STREAM)) return;
    if (o == ((void*)0) ||
        (group = streamLookupCG(o->ptr,groupname->ptr)) == ((void*)0))
    {
        addReplyErrorFormat(c, "-NOGROUP No such key '%s' or consumer "
                               "group '%s'",
                               (char*)key->ptr,(char*)groupname->ptr);
        return;
    }


    if (justinfo) {
        addReplyArrayLen(c,4);

        addReplyLongLong(c,raxSize(group->pel));

        if (raxSize(group->pel) == 0) {
            addReplyNull(c);
            addReplyNull(c);
            addReplyNullArray(c);
        } else {

            raxIterator ri;
            raxStart(&ri,group->pel);
            raxSeek(&ri,"^",((void*)0),0);
            raxNext(&ri);
            streamDecodeID(ri.key,&startid);
            addReplyStreamID(c,&startid);


            raxSeek(&ri,"$",((void*)0),0);
            raxNext(&ri);
            streamDecodeID(ri.key,&endid);
            addReplyStreamID(c,&endid);
            raxStop(&ri);


            raxStart(&ri,group->consumers);
            raxSeek(&ri,"^",((void*)0),0);
            void *arraylen_ptr = addReplyDeferredLen(c);
            size_t arraylen = 0;
            while(raxNext(&ri)) {
                streamConsumer *consumer = ri.data;
                if (raxSize(consumer->pel) == 0) continue;
                addReplyArrayLen(c,2);
                addReplyBulkCBuffer(c,ri.key,ri.key_len);
                addReplyBulkLongLong(c,raxSize(consumer->pel));
                arraylen++;
            }
            setDeferredArrayLen(c,arraylen_ptr,arraylen);
            raxStop(&ri);
        }
    }

    else {
        streamConsumer *consumer = consumername ?
                                streamLookupConsumer(group,consumername->ptr,0):
                                ((void*)0);



        if (consumername && consumer == ((void*)0)) {
            addReplyArrayLen(c,0);
            return;
        }

        rax *pel = consumer ? consumer->pel : group->pel;
        unsigned char startkey[sizeof(streamID)];
        unsigned char endkey[sizeof(streamID)];
        raxIterator ri;
        mstime_t now = mstime();

        streamEncodeID(startkey,&startid);
        streamEncodeID(endkey,&endid);
        raxStart(&ri,pel);
        raxSeek(&ri,">=",startkey,sizeof(startkey));
        void *arraylen_ptr = addReplyDeferredLen(c);
        size_t arraylen = 0;

        while(count && raxNext(&ri) && memcmp(ri.key,endkey,ri.key_len) <= 0) {
            streamNACK *nack = ri.data;

            arraylen++;
            count--;
            addReplyArrayLen(c,4);


            streamID id;
            streamDecodeID(ri.key,&id);
            addReplyStreamID(c,&id);


            addReplyBulkCBuffer(c,nack->consumer->name,
                                sdslen(nack->consumer->name));


            mstime_t elapsed = now - nack->delivery_time;
            if (elapsed < 0) elapsed = 0;
            addReplyLongLong(c,elapsed);


            addReplyLongLong(c,nack->delivery_count);
        }
        raxStop(&ri);
        setDeferredArrayLen(c,arraylen_ptr,arraylen);
    }
}
