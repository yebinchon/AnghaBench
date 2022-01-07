
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int groupname; int keyname; } ;
typedef TYPE_1__ streamPropInfo ;
struct TYPE_20__ {int delivery_count; int delivery_time; TYPE_3__* consumer; } ;
typedef TYPE_2__ streamNACK ;
typedef int streamIterator ;
typedef int streamID ;
struct TYPE_21__ {int pel; } ;
typedef TYPE_3__ streamConsumer ;
struct TYPE_22__ {int pel; int last_id; } ;
typedef TYPE_4__ streamCG ;
typedef int stream ;
typedef int robj ;
typedef int int64_t ;
typedef int client ;
typedef int buf ;


 int STREAM_RWR_HISTORY ;
 int STREAM_RWR_NOACK ;
 int STREAM_RWR_RAWENTRIES ;
 int addReplyArrayLen (int *,int) ;
 int addReplyBulkCBuffer (int *,unsigned char*,int ) ;
 void* addReplyDeferredLen (int *) ;
 int addReplyMapLen (int *,int ) ;
 int addReplyStreamID (int *,int *) ;
 int * createObjectFromStreamID (int *) ;
 int decrRefCount (int *) ;
 int mstime () ;
 TYPE_2__* raxFind (int ,unsigned char*,int) ;
 int raxInsert (int ,unsigned char*,int,TYPE_2__*,int *) ;
 TYPE_2__* raxNotFound ;
 int raxRemove (int ,unsigned char*,int,int *) ;
 int raxTryInsert (int ,unsigned char*,int,TYPE_2__*,int *) ;
 int serverAssert (int) ;
 int serverPanic (char*) ;
 int setDeferredArrayLen (int *,void*,size_t) ;
 scalar_t__ streamCompareID (int *,int *) ;
 TYPE_2__* streamCreateNACK (TYPE_3__*) ;
 int streamEncodeID (unsigned char*,int *) ;
 int streamFreeNACK (TYPE_2__*) ;
 int streamIteratorGetField (int *,unsigned char**,unsigned char**,int *,int *) ;
 scalar_t__ streamIteratorGetID (int *,int *,int *) ;
 int streamIteratorStart (int *,int *,int *,int *,int) ;
 int streamIteratorStop (int *) ;
 int streamPropagateGroupID (int *,int ,TYPE_4__*,int ) ;
 int streamPropagateXCLAIM (int *,int ,TYPE_4__*,int ,int *,TYPE_2__*) ;
 size_t streamReplyWithRangeFromConsumerPEL (int *,int *,int *,int *,size_t,TYPE_3__*) ;

size_t streamReplyWithRange(client *c, stream *s, streamID *start, streamID *end, size_t count, int rev, streamCG *group, streamConsumer *consumer, int flags, streamPropInfo *spi) {
    void *arraylen_ptr = ((void*)0);
    size_t arraylen = 0;
    streamIterator si;
    int64_t numfields;
    streamID id;
    int propagate_last_id = 0;






    if (group && (flags & STREAM_RWR_HISTORY)) {
        return streamReplyWithRangeFromConsumerPEL(c,s,start,end,count,
                                                   consumer);
    }

    if (!(flags & STREAM_RWR_RAWENTRIES))
        arraylen_ptr = addReplyDeferredLen(c);
    streamIteratorStart(&si,s,start,end,rev);
    while(streamIteratorGetID(&si,&id,&numfields)) {

        if (group && streamCompareID(&id,&group->last_id) > 0) {
            group->last_id = id;
            propagate_last_id = 1;
        }



        addReplyArrayLen(c,2);
        addReplyStreamID(c,&id);

        addReplyMapLen(c,numfields);


        while(numfields--) {
            unsigned char *key, *value;
            int64_t key_len, value_len;
            streamIteratorGetField(&si,&key,&value,&key_len,&value_len);
            addReplyBulkCBuffer(c,key,key_len);
            addReplyBulkCBuffer(c,value,value_len);
        }
        if (group && !(flags & STREAM_RWR_NOACK)) {
            unsigned char buf[sizeof(streamID)];
            streamEncodeID(buf,&id);




            streamNACK *nack = streamCreateNACK(consumer);
            int group_inserted =
                raxTryInsert(group->pel,buf,sizeof(buf),nack,((void*)0));
            int consumer_inserted =
                raxTryInsert(consumer->pel,buf,sizeof(buf),nack,((void*)0));




            if (group_inserted == 0) {
                streamFreeNACK(nack);
                nack = raxFind(group->pel,buf,sizeof(buf));
                serverAssert(nack != raxNotFound);
                raxRemove(nack->consumer->pel,buf,sizeof(buf),((void*)0));

                nack->consumer = consumer;
                nack->delivery_time = mstime();
                nack->delivery_count = 1;

                raxInsert(consumer->pel,buf,sizeof(buf),nack,((void*)0));
            } else if (group_inserted == 1 && consumer_inserted == 0) {
                serverPanic("NACK half-created. Should not be possible.");
            }


            if (spi) {
                robj *idarg = createObjectFromStreamID(&id);
                streamPropagateXCLAIM(c,spi->keyname,group,spi->groupname,idarg,nack);
                decrRefCount(idarg);
            }
        } else {
            if (propagate_last_id)
                streamPropagateGroupID(c,spi->keyname,group,spi->groupname);
        }

        arraylen++;
        if (count && count == arraylen) break;
    }
    streamIteratorStop(&si);
    if (arraylen_ptr) setDeferredArrayLen(c,arraylen_ptr,arraylen);
    return arraylen;
}
