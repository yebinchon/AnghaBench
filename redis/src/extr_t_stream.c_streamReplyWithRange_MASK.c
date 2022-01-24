#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  groupname; int /*<<< orphan*/  keyname; } ;
typedef  TYPE_1__ streamPropInfo ;
struct TYPE_20__ {int delivery_count; int /*<<< orphan*/  delivery_time; TYPE_3__* consumer; } ;
typedef  TYPE_2__ streamNACK ;
typedef  int /*<<< orphan*/  streamIterator ;
typedef  int /*<<< orphan*/  streamID ;
struct TYPE_21__ {int /*<<< orphan*/  pel; } ;
typedef  TYPE_3__ streamConsumer ;
struct TYPE_22__ {int /*<<< orphan*/  pel; int /*<<< orphan*/  last_id; } ;
typedef  TYPE_4__ streamCG ;
typedef  int /*<<< orphan*/  stream ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  client ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int STREAM_RWR_HISTORY ; 
 int STREAM_RWR_NOACK ; 
 int STREAM_RWR_RAWENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* raxNotFound ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,unsigned char*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned char**,unsigned char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 size_t FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,TYPE_3__*) ; 

size_t FUNC26(client *c, stream *s, streamID *start, streamID *end, size_t count, int rev, streamCG *group, streamConsumer *consumer, int flags, streamPropInfo *spi) {
    void *arraylen_ptr = NULL;
    size_t arraylen = 0;
    streamIterator si;
    int64_t numfields;
    streamID id;
    int propagate_last_id = 0;

    /* If the client is asking for some history, we serve it using a
     * different function, so that we return entries *solely* from its
     * own PEL. This ensures each consumer will always and only see
     * the history of messages delivered to it and not yet confirmed
     * as delivered. */
    if (group && (flags & STREAM_RWR_HISTORY)) {
        return FUNC25(c,s,start,end,count,
                                                   consumer);
    }

    if (!(flags & STREAM_RWR_RAWENTRIES))
        arraylen_ptr = FUNC2(c);
    FUNC21(&si,s,start,end,rev);
    while(FUNC20(&si,&id,&numfields)) {
        /* Update the group last_id if needed. */
        if (group && FUNC15(&id,&group->last_id) > 0) {
            group->last_id = id;
            propagate_last_id = 1;
        }

        /* Emit a two elements array for each item. The first is
         * the ID, the second is an array of field-value pairs. */
        FUNC0(c,2);
        FUNC4(c,&id);

        FUNC3(c,numfields);

        /* Emit the field-value pairs. */
        while(numfields--) {
            unsigned char *key, *value;
            int64_t key_len, value_len;
            FUNC19(&si,&key,&value,&key_len,&value_len);
            FUNC1(c,key,key_len);
            FUNC1(c,value,value_len);
        }

        /* If a group is passed, we need to create an entry in the
         * PEL (pending entries list) of this group *and* this consumer.
         *
         * Note that we cannot be sure about the fact the message is not
         * already owned by another consumer, because the admin is able
         * to change the consumer group last delivered ID using the
         * XGROUP SETID command. So if we find that there is already
         * a NACK for the entry, we need to associate it to the new
         * consumer. */
        if (group && !(flags & STREAM_RWR_NOACK)) {
            unsigned char buf[sizeof(streamID)];
            FUNC17(buf,&id);

            /* Try to add a new NACK. Most of the time this will work and
             * will not require extra lookups. We'll fix the problem later
             * if we find that there is already a entry for this ID. */
            streamNACK *nack = FUNC16(consumer);
            int group_inserted =
                FUNC11(group->pel,buf,sizeof(buf),nack,NULL);
            int consumer_inserted =
                FUNC11(consumer->pel,buf,sizeof(buf),nack,NULL);

            /* Now we can check if the entry was already busy, and
             * in that case reassign the entry to the new consumer,
             * or update it if the consumer is the same as before. */
            if (group_inserted == 0) {
                FUNC18(nack);
                nack = FUNC8(group->pel,buf,sizeof(buf));
                FUNC12(nack != raxNotFound);
                FUNC10(nack->consumer->pel,buf,sizeof(buf),NULL);
                /* Update the consumer and NACK metadata. */
                nack->consumer = consumer;
                nack->delivery_time = FUNC7();
                nack->delivery_count = 1;
                /* Add the entry in the new consumer local PEL. */
                FUNC9(consumer->pel,buf,sizeof(buf),nack,NULL);
            } else if (group_inserted == 1 && consumer_inserted == 0) {
                FUNC13("NACK half-created. Should not be possible.");
            }

            /* Propagate as XCLAIM. */
            if (spi) {
                robj *idarg = FUNC5(&id);
                FUNC24(c,spi->keyname,group,spi->groupname,idarg,nack);
                FUNC6(idarg);
            }
        } else {
            if (propagate_last_id)
                FUNC23(c,spi->keyname,group,spi->groupname);
        }

        arraylen++;
        if (count && count == arraylen) break;
    }
    FUNC22(&si);
    if (arraylen_ptr) FUNC14(c,arraylen_ptr,arraylen);
    return arraylen;
}