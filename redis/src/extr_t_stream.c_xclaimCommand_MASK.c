#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_58__   TYPE_6__ ;
typedef  struct TYPE_57__   TYPE_5__ ;
typedef  struct TYPE_56__   TYPE_4__ ;
typedef  struct TYPE_55__   TYPE_3__ ;
typedef  struct TYPE_54__   TYPE_35__ ;
typedef  struct TYPE_53__   TYPE_2__ ;
typedef  struct TYPE_52__   TYPE_1__ ;
typedef  struct TYPE_51__   TYPE_12__ ;

/* Type definitions */
struct TYPE_52__ {int delivery_time; long long delivery_count; TYPE_3__* consumer; } ;
typedef  TYPE_1__ streamNACK ;
typedef  int /*<<< orphan*/  streamIterator ;
struct TYPE_53__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ streamID ;
struct TYPE_55__ {int /*<<< orphan*/  pel; } ;
typedef  TYPE_3__ streamConsumer ;
struct TYPE_56__ {int /*<<< orphan*/  pel; TYPE_2__ last_id; } ;
typedef  TYPE_4__ streamCG ;
struct TYPE_57__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_5__ robj ;
typedef  int mstime_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_58__ {int argc; TYPE_12__** argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_6__ client ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_54__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_51__ {char* ptr; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  OBJ_STREAM ; 
 int /*<<< orphan*/  STREAM_RWR_RAWENTRIES ; 
 void* FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_12__*,...) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,TYPE_12__*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned char*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* raxNotFound ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 
 TYPE_35__ server ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,TYPE_2__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC22 (TYPE_4__*,char*,int) ; 
 scalar_t__ FUNC23 (TYPE_6__*,TYPE_12__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*,TYPE_12__*,TYPE_4__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*,TYPE_12__*,TYPE_4__*,TYPE_12__*,TYPE_12__*,TYPE_1__*) ; 
 size_t FUNC26 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC27(client *c) {
    streamCG *group = NULL;
    robj *o = FUNC6(c->db,c->argv[1]);
    long long minidle; /* Minimum idle time argument. */
    long long retrycount = -1;   /* -1 means RETRYCOUNT option not given. */
    mstime_t deliverytime = -1;  /* -1 means IDLE/TIME options not given. */
    int force = 0;
    int justid = 0;

    if (o) {
        if (FUNC4(c,o,OBJ_STREAM)) return; /* Type error. */
        group = FUNC21(o->ptr,c->argv[2]->ptr);
    }

    /* No key or group? Send an error given that the group creation
     * is mandatory. */
    if (o == NULL || group == NULL) {
        FUNC1(c,"-NOGROUP No such key '%s' or "
                              "consumer group '%s'", (char*)c->argv[1]->ptr,
                              (char*)c->argv[2]->ptr);
        return;
    }

    if (FUNC5(c,c->argv[4],&minidle,
        "Invalid min-idle-time argument for XCLAIM")
        != C_OK) return;
    if (minidle < 0) minidle = 0;

    /* Start parsing the IDs, so that we abort ASAP if there is a syntax
     * error: the return value of this command cannot be an error in case
     * the client successfully claimed some message, so it should be
     * executed in a "all or nothing" fashion. */
    int j;
    for (j = 5; j < c->argc; j++) {
        streamID id;
        if (FUNC23(NULL,c->argv[j],&id,0) != C_OK) break;
    }
    int last_id_arg = j-1; /* Next time we iterate the IDs we now the range. */

    /* If we stopped because some IDs cannot be parsed, perhaps they
     * are trailing options. */
    mstime_t now = FUNC7();
    streamID last_id = {0,0};
    int propagate_last_id = 0;
    for (; j < c->argc; j++) {
        int moreargs = (c->argc-1) - j; /* Number of additional arguments. */
        char *opt = c->argv[j]->ptr;
        if (!FUNC14(opt,"FORCE")) {
            force = 1;
        } else if (!FUNC14(opt,"JUSTID")) {
            justid = 1;
        } else if (!FUNC14(opt,"IDLE") && moreargs) {
            j++;
            if (FUNC5(c,c->argv[j],&deliverytime,
                "Invalid IDLE option argument for XCLAIM")
                != C_OK) return;
            deliverytime = now - deliverytime;
        } else if (!FUNC14(opt,"TIME") && moreargs) {
            j++;
            if (FUNC5(c,c->argv[j],&deliverytime,
                "Invalid TIME option argument for XCLAIM")
                != C_OK) return;
        } else if (!FUNC14(opt,"RETRYCOUNT") && moreargs) {
            j++;
            if (FUNC5(c,c->argv[j],&retrycount,
                "Invalid RETRYCOUNT option argument for XCLAIM")
                != C_OK) return;
        } else if (!FUNC14(opt,"LASTID") && moreargs) {
            j++;
            if (FUNC23(c,c->argv[j],&last_id,0) != C_OK) return;
        } else {
            FUNC1(c,"Unrecognized XCLAIM option '%s'",opt);
            return;
        }
    }

    if (FUNC15(&last_id,&group->last_id) > 0) {
        group->last_id = last_id;
        propagate_last_id = 1;
    }

    if (deliverytime != -1) {
        /* If a delivery time was passed, either with IDLE or TIME, we
         * do some sanity check on it, and set the deliverytime to now
         * (which is a sane choice usually) if the value is bogus.
         * To raise an error here is not wise because clients may compute
         * the idle time doing some math starting from their local time,
         * and this is not a good excuse to fail in case, for instance,
         * the computer time is a bit in the future from our POV. */
        if (deliverytime < 0 || deliverytime > now) deliverytime = now;
    } else {
        /* If no IDLE/TIME option was passed, we want the last delivery
         * time to be now, so that the idle time of the message will be
         * zero. */
        deliverytime = now;
    }

    /* Do the actual claiming. */
    streamConsumer *consumer = FUNC22(group,c->argv[3]->ptr,1);
    void *arraylenptr = FUNC0(c);
    size_t arraylen = 0;
    for (int j = 5; j <= last_id_arg; j++) {
        streamID id;
        unsigned char buf[sizeof(streamID)];
        if (FUNC23(c,c->argv[j],&id,0) != C_OK)
            FUNC12("StreamID invalid after check. Should not be possible.");
        FUNC17(buf,&id);

        /* Lookup the ID in the group PEL. */
        streamNACK *nack = FUNC9(group->pel,buf,sizeof(buf));

        /* If FORCE is passed, let's check if at least the entry
         * exists in the Stream. In such case, we'll crate a new
         * entry in the PEL from scratch, so that XCLAIM can also
         * be used to create entries in the PEL. Useful for AOF
         * and replication of consumer groups. */
        if (force && nack == raxNotFound) {
            streamIterator myiterator;
            FUNC19(&myiterator,o->ptr,&id,&id,0);
            int64_t numfields;
            int found = 0;
            streamID item_id;
            if (FUNC18(&myiterator,&item_id,&numfields)) found = 1;
            FUNC20(&myiterator);

            /* Item must exist for us to create a NACK for it. */
            if (!found) continue;

            /* Create the NACK. */
            nack = FUNC16(NULL);
            FUNC10(group->pel,buf,sizeof(buf),nack,NULL);
        }

        if (nack != raxNotFound) {
            /* We need to check if the minimum idle time requested
             * by the caller is satisfied by this entry.
             *
             * Note that the nack could be created by FORCE, in this
             * case there was no pre-existing entry and minidle should
             * be ignored, but in that case nick->consumer is NULL. */
            if (nack->consumer && minidle) {
                mstime_t this_idle = now - nack->delivery_time;
                if (this_idle < minidle) continue;
            }
            /* Remove the entry from the old consumer.
             * Note that nack->consumer is NULL if we created the
             * NACK above because of the FORCE option. */
            if (nack->consumer)
                FUNC11(nack->consumer->pel,buf,sizeof(buf),NULL);
            /* Update the consumer and idle time. */
            nack->consumer = consumer;
            nack->delivery_time = deliverytime;
            /* Set the delivery attempts counter if given, otherwise 
             * autoincrement unless JUSTID option provided */
            if (retrycount >= 0) {
                nack->delivery_count = retrycount;
            } else if (!justid) {
                nack->delivery_count++;
            }
            /* Add the entry in the new consumer local PEL. */
            FUNC10(consumer->pel,buf,sizeof(buf),nack,NULL);
            /* Send the reply for this entry. */
            if (justid) {
                FUNC3(c,&id);
            } else {
                size_t emitted = FUNC26(c,o->ptr,&id,&id,1,0,
                                    NULL,NULL,STREAM_RWR_RAWENTRIES,NULL);
                if (!emitted) FUNC2(c);
            }
            arraylen++;

            /* Propagate this change. */
            FUNC25(c,c->argv[1],group,c->argv[2],c->argv[j],nack);
            propagate_last_id = 0; /* Will be propagated by XCLAIM itself. */
            server.dirty++;
        }
    }
    if (propagate_last_id) {
        FUNC24(c,c->argv[1],group,c->argv[2]);
        server.dirty++;
    }
    FUNC13(c,arraylenptr,arraylen);
    FUNC8(c);
}