
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int delivery_count; int delivery_time; } ;
typedef TYPE_1__ streamNACK ;
typedef int streamID ;
struct TYPE_10__ {int pel; } ;
typedef TYPE_2__ streamConsumer ;
typedef int stream ;
typedef int startkey ;
struct TYPE_11__ {TYPE_1__* data; int key; int key_len; } ;
typedef TYPE_3__ raxIterator ;
typedef int client ;


 int STREAM_RWR_RAWENTRIES ;
 int addReplyArrayLen (int *,int) ;
 void* addReplyDeferredLen (int *) ;
 int addReplyNullArray (int *) ;
 int addReplyStreamID (int *,int *) ;
 scalar_t__ memcmp (int ,int *,int ) ;
 int mstime () ;
 scalar_t__ raxNext (TYPE_3__*) ;
 int raxSeek (TYPE_3__*,char*,unsigned char*,int) ;
 int raxStart (TYPE_3__*,int ) ;
 int raxStop (TYPE_3__*) ;
 int setDeferredArrayLen (int *,void*,size_t) ;
 int streamDecodeID (int ,int *) ;
 int streamEncodeID (unsigned char*,int *) ;
 scalar_t__ streamReplyWithRange (int *,int *,int *,int *,int,int ,int *,int *,int ,int *) ;

size_t streamReplyWithRangeFromConsumerPEL(client *c, stream *s, streamID *start, streamID *end, size_t count, streamConsumer *consumer) {
    raxIterator ri;
    unsigned char startkey[sizeof(streamID)];
    unsigned char endkey[sizeof(streamID)];
    streamEncodeID(startkey,start);
    if (end) streamEncodeID(endkey,end);

    size_t arraylen = 0;
    void *arraylen_ptr = addReplyDeferredLen(c);
    raxStart(&ri,consumer->pel);
    raxSeek(&ri,">=",startkey,sizeof(startkey));
    while(raxNext(&ri) && (!count || arraylen < count)) {
        if (end && memcmp(ri.key,end,ri.key_len) > 0) break;
        streamID thisid;
        streamDecodeID(ri.key,&thisid);
        if (streamReplyWithRange(c,s,&thisid,&thisid,1,0,((void*)0),((void*)0),
                                 STREAM_RWR_RAWENTRIES,((void*)0)) == 0)
        {




            addReplyArrayLen(c,2);
            streamID id;
            streamDecodeID(ri.key,&id);
            addReplyStreamID(c,&id);
            addReplyNullArray(c);
        } else {
            streamNACK *nack = ri.data;
            nack->delivery_time = mstime();
            nack->delivery_count++;
        }
        arraylen++;
    }
    raxStop(&ri);
    setDeferredArrayLen(c,arraylen_ptr,arraylen);
    return arraylen;
}
