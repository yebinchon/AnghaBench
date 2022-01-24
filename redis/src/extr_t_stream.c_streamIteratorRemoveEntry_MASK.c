#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
struct TYPE_8__ {unsigned char* lp; unsigned char* lp_flags; scalar_t__ rev; TYPE_5__* stream; int /*<<< orphan*/  end_key; int /*<<< orphan*/  start_key; TYPE_1__ ri; } ;
typedef  TYPE_2__ streamIterator ;
typedef  int /*<<< orphan*/  streamID ;
typedef  int int64_t ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  rax; } ;

/* Variables and functions */
 int STREAM_ITEM_FLAG_DELETED ; 
 unsigned char* FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned char*) ; 
 unsigned char* FUNC4 (unsigned char*,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

void FUNC10(streamIterator *si, streamID *current) {
    unsigned char *lp = si->lp;
    int64_t aux;

    /* We do not really delete the entry here. Instead we mark it as
     * deleted flagging it, and also incrementing the count of the
     * deleted entries in the listpack header.
     *
     * We start flagging: */
    int flags = FUNC2(si->lp_flags);
    flags |= STREAM_ITEM_FLAG_DELETED;
    lp = FUNC4(lp,&si->lp_flags,flags);

    /* Change the valid/deleted entries count in the master entry. */
    unsigned char *p = FUNC0(lp);
    aux = FUNC2(p);

    if (aux == 1) {
        /* If this is the last element in the listpack, we can remove the whole
         * node. */
        FUNC1(lp);
        FUNC6(si->stream->rax,si->ri.key,si->ri.key_len,NULL);
    } else {
        /* In the base case we alter the counters of valid/deleted entries. */
        lp = FUNC4(lp,&p,aux-1);
        p = FUNC3(lp,p); /* Seek deleted field. */
        aux = FUNC2(p);
        lp = FUNC4(lp,&p,aux+1);

        /* Update the listpack with the new pointer. */
        if (si->lp != lp)
            FUNC5(si->stream->rax,si->ri.key,si->ri.key_len,lp,NULL);
    }

    /* Update the number of entries counter. */
    si->stream->length--;

    /* Re-seek the iterator to fix the now messed up state. */
    streamID start, end;
    if (si->rev) {
        FUNC7(si->start_key,&start);
        end = *current;
    } else {
        start = *current;
        FUNC7(si->end_key,&end);
    }
    FUNC9(si);
    FUNC8(si,si->stream,&start,&end,si->rev);

    /* TODO: perform a garbage collection here if the ration between
     * deleted and valid goes over a certain limit. */
}