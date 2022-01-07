
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_58__ TYPE_6__ ;
typedef struct TYPE_57__ TYPE_5__ ;
typedef struct TYPE_56__ TYPE_4__ ;
typedef struct TYPE_55__ TYPE_3__ ;
typedef struct TYPE_54__ TYPE_35__ ;
typedef struct TYPE_53__ TYPE_2__ ;
typedef struct TYPE_52__ TYPE_1__ ;
typedef struct TYPE_51__ TYPE_12__ ;


struct TYPE_52__ {int delivery_time; long long delivery_count; TYPE_3__* consumer; } ;
typedef TYPE_1__ streamNACK ;
typedef int streamIterator ;
struct TYPE_53__ {int member_1; int member_0; } ;
typedef TYPE_2__ streamID ;
struct TYPE_55__ {int pel; } ;
typedef TYPE_3__ streamConsumer ;
struct TYPE_56__ {int pel; TYPE_2__ last_id; } ;
typedef TYPE_4__ streamCG ;
struct TYPE_57__ {int ptr; } ;
typedef TYPE_5__ robj ;
typedef int mstime_t ;
typedef int int64_t ;
struct TYPE_58__ {int argc; TYPE_12__** argv; int db; } ;
typedef TYPE_6__ client ;
typedef int buf ;
struct TYPE_54__ {int dirty; } ;
struct TYPE_51__ {char* ptr; } ;


 scalar_t__ C_OK ;
 int OBJ_STREAM ;
 int STREAM_RWR_RAWENTRIES ;
 void* addReplyDeferredLen (TYPE_6__*) ;
 int addReplyErrorFormat (TYPE_6__*,char*,char*,...) ;
 int addReplyNull (TYPE_6__*) ;
 int addReplyStreamID (TYPE_6__*,TYPE_2__*) ;
 scalar_t__ checkType (TYPE_6__*,TYPE_5__*,int ) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_6__*,TYPE_12__*,...) ;
 TYPE_5__* lookupKeyRead (int ,TYPE_12__*) ;
 int mstime () ;
 int preventCommandPropagation (TYPE_6__*) ;
 TYPE_1__* raxFind (int ,unsigned char*,int) ;
 int raxInsert (int ,unsigned char*,int,TYPE_1__*,int *) ;
 TYPE_1__* raxNotFound ;
 int raxRemove (int ,unsigned char*,int,int *) ;
 TYPE_35__ server ;
 int serverPanic (char*) ;
 int setDeferredArrayLen (TYPE_6__*,void*,size_t) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ streamCompareID (TYPE_2__*,TYPE_2__*) ;
 TYPE_1__* streamCreateNACK (int *) ;
 int streamEncodeID (unsigned char*,TYPE_2__*) ;
 scalar_t__ streamIteratorGetID (int *,TYPE_2__*,int *) ;
 int streamIteratorStart (int *,int ,TYPE_2__*,TYPE_2__*,int ) ;
 int streamIteratorStop (int *) ;
 TYPE_4__* streamLookupCG (int ,char*) ;
 TYPE_3__* streamLookupConsumer (TYPE_4__*,char*,int) ;
 scalar_t__ streamParseStrictIDOrReply (TYPE_6__*,TYPE_12__*,TYPE_2__*,int ) ;
 int streamPropagateGroupID (TYPE_6__*,TYPE_12__*,TYPE_4__*,TYPE_12__*) ;
 int streamPropagateXCLAIM (TYPE_6__*,TYPE_12__*,TYPE_4__*,TYPE_12__*,TYPE_12__*,TYPE_1__*) ;
 size_t streamReplyWithRange (TYPE_6__*,int ,TYPE_2__*,TYPE_2__*,int,int ,int *,int *,int ,int *) ;

void xclaimCommand(client *c) {
    streamCG *group = ((void*)0);
    robj *o = lookupKeyRead(c->db,c->argv[1]);
    long long minidle;
    long long retrycount = -1;
    mstime_t deliverytime = -1;
    int force = 0;
    int justid = 0;

    if (o) {
        if (checkType(c,o,OBJ_STREAM)) return;
        group = streamLookupCG(o->ptr,c->argv[2]->ptr);
    }



    if (o == ((void*)0) || group == ((void*)0)) {
        addReplyErrorFormat(c,"-NOGROUP No such key '%s' or "
                              "consumer group '%s'", (char*)c->argv[1]->ptr,
                              (char*)c->argv[2]->ptr);
        return;
    }

    if (getLongLongFromObjectOrReply(c,c->argv[4],&minidle,
        "Invalid min-idle-time argument for XCLAIM")
        != C_OK) return;
    if (minidle < 0) minidle = 0;





    int j;
    for (j = 5; j < c->argc; j++) {
        streamID id;
        if (streamParseStrictIDOrReply(((void*)0),c->argv[j],&id,0) != C_OK) break;
    }
    int last_id_arg = j-1;



    mstime_t now = mstime();
    streamID last_id = {0,0};
    int propagate_last_id = 0;
    for (; j < c->argc; j++) {
        int moreargs = (c->argc-1) - j;
        char *opt = c->argv[j]->ptr;
        if (!strcasecmp(opt,"FORCE")) {
            force = 1;
        } else if (!strcasecmp(opt,"JUSTID")) {
            justid = 1;
        } else if (!strcasecmp(opt,"IDLE") && moreargs) {
            j++;
            if (getLongLongFromObjectOrReply(c,c->argv[j],&deliverytime,
                "Invalid IDLE option argument for XCLAIM")
                != C_OK) return;
            deliverytime = now - deliverytime;
        } else if (!strcasecmp(opt,"TIME") && moreargs) {
            j++;
            if (getLongLongFromObjectOrReply(c,c->argv[j],&deliverytime,
                "Invalid TIME option argument for XCLAIM")
                != C_OK) return;
        } else if (!strcasecmp(opt,"RETRYCOUNT") && moreargs) {
            j++;
            if (getLongLongFromObjectOrReply(c,c->argv[j],&retrycount,
                "Invalid RETRYCOUNT option argument for XCLAIM")
                != C_OK) return;
        } else if (!strcasecmp(opt,"LASTID") && moreargs) {
            j++;
            if (streamParseStrictIDOrReply(c,c->argv[j],&last_id,0) != C_OK) return;
        } else {
            addReplyErrorFormat(c,"Unrecognized XCLAIM option '%s'",opt);
            return;
        }
    }

    if (streamCompareID(&last_id,&group->last_id) > 0) {
        group->last_id = last_id;
        propagate_last_id = 1;
    }

    if (deliverytime != -1) {







        if (deliverytime < 0 || deliverytime > now) deliverytime = now;
    } else {



        deliverytime = now;
    }


    streamConsumer *consumer = streamLookupConsumer(group,c->argv[3]->ptr,1);
    void *arraylenptr = addReplyDeferredLen(c);
    size_t arraylen = 0;
    for (int j = 5; j <= last_id_arg; j++) {
        streamID id;
        unsigned char buf[sizeof(streamID)];
        if (streamParseStrictIDOrReply(c,c->argv[j],&id,0) != C_OK)
            serverPanic("StreamID invalid after check. Should not be possible.");
        streamEncodeID(buf,&id);


        streamNACK *nack = raxFind(group->pel,buf,sizeof(buf));






        if (force && nack == raxNotFound) {
            streamIterator myiterator;
            streamIteratorStart(&myiterator,o->ptr,&id,&id,0);
            int64_t numfields;
            int found = 0;
            streamID item_id;
            if (streamIteratorGetID(&myiterator,&item_id,&numfields)) found = 1;
            streamIteratorStop(&myiterator);


            if (!found) continue;


            nack = streamCreateNACK(((void*)0));
            raxInsert(group->pel,buf,sizeof(buf),nack,((void*)0));
        }

        if (nack != raxNotFound) {






            if (nack->consumer && minidle) {
                mstime_t this_idle = now - nack->delivery_time;
                if (this_idle < minidle) continue;
            }



            if (nack->consumer)
                raxRemove(nack->consumer->pel,buf,sizeof(buf),((void*)0));

            nack->consumer = consumer;
            nack->delivery_time = deliverytime;


            if (retrycount >= 0) {
                nack->delivery_count = retrycount;
            } else if (!justid) {
                nack->delivery_count++;
            }

            raxInsert(consumer->pel,buf,sizeof(buf),nack,((void*)0));

            if (justid) {
                addReplyStreamID(c,&id);
            } else {
                size_t emitted = streamReplyWithRange(c,o->ptr,&id,&id,1,0,
                                    ((void*)0),((void*)0),STREAM_RWR_RAWENTRIES,((void*)0));
                if (!emitted) addReplyNull(c);
            }
            arraylen++;


            streamPropagateXCLAIM(c,c->argv[1],group,c->argv[2],c->argv[j],nack);
            propagate_last_id = 0;
            server.dirty++;
        }
    }
    if (propagate_last_id) {
        streamPropagateGroupID(c,c->argv[1],group,c->argv[2]);
        server.dirty++;
    }
    setDeferredArrayLen(c,arraylenptr,arraylen);
    preventCommandPropagation(c);
}
