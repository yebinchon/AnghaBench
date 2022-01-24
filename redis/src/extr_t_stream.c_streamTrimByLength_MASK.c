#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t length; int /*<<< orphan*/  rax; } ;
typedef  TYPE_1__ stream ;
struct TYPE_9__ {unsigned char* data; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; } ;
typedef  TYPE_2__ raxIterator ;
typedef  size_t int64_t ;

/* Variables and functions */
 int STREAM_ITEM_FLAG_DELETED ; 
 int STREAM_ITEM_FLAG_SAMEFIELDS ; 
 unsigned char* FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 void* FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned char*) ; 
 unsigned char* FUNC4 (unsigned char*,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int64_t FUNC12(stream *s, size_t maxlen, int approx) {
    if (s->length <= maxlen) return 0;

    raxIterator ri;
    FUNC9(&ri,s->rax);
    FUNC8(&ri,"^",NULL,0);

    int64_t deleted = 0;
    while(s->length > maxlen && FUNC6(&ri)) {
        unsigned char *lp = ri.data, *p = FUNC0(lp);
        int64_t entries = FUNC2(p);

        /* Check if we can remove the whole node, and still have at
         * least maxlen elements. */
        if (s->length - entries >= maxlen) {
            FUNC1(lp);
            FUNC7(s->rax,ri.key,ri.key_len,NULL);
            FUNC8(&ri,">=",ri.key,ri.key_len);
            s->length -= entries;
            deleted += entries;
            continue;
        }

        /* If we cannot remove a whole element, and approx is true,
         * stop here. */
        if (approx) break;

        /* Otherwise, we have to mark single entries inside the listpack
         * as deleted. We start by updating the entries/deleted counters. */
        int64_t to_delete = s->length - maxlen;
        FUNC11(to_delete < entries);
        lp = FUNC4(lp,&p,entries-to_delete);
        p = FUNC3(lp,p); /* Seek deleted field. */
        int64_t marked_deleted = FUNC2(p);
        lp = FUNC4(lp,&p,marked_deleted+to_delete);
        p = FUNC3(lp,p); /* Seek num-of-fields in the master entry. */

        /* Skip all the master fields. */
        int64_t master_fields_count = FUNC2(p);
        p = FUNC3(lp,p); /* Seek the first field. */
        for (int64_t j = 0; j < master_fields_count; j++)
            p = FUNC3(lp,p); /* Skip all master fields. */
        p = FUNC3(lp,p); /* Skip the zero master entry terminator. */

        /* 'p' is now pointing to the first entry inside the listpack.
         * We have to run entry after entry, marking entries as deleted
         * if they are already not deleted. */
        while(p) {
            int flags = FUNC2(p);
            int to_skip;

            /* Mark the entry as deleted. */
            if (!(flags & STREAM_ITEM_FLAG_DELETED)) {
                flags |= STREAM_ITEM_FLAG_DELETED;
                lp = FUNC4(lp,&p,flags);
                deleted++;
                s->length--;
                if (s->length <= maxlen) break; /* Enough entries deleted. */
            }

            p = FUNC3(lp,p); /* Skip ID ms delta. */
            p = FUNC3(lp,p); /* Skip ID seq delta. */
            p = FUNC3(lp,p); /* Seek num-fields or values (if compressed). */
            if (flags & STREAM_ITEM_FLAG_SAMEFIELDS) {
                to_skip = master_fields_count;
            } else {
                to_skip = FUNC2(p);
                to_skip = 1+(to_skip*2);
            }

            while(to_skip--) p = FUNC3(lp,p); /* Skip the whole entry. */
            p = FUNC3(lp,p); /* Skip the final lp-count field. */
        }

        /* Here we should perform garbage collection in case at this point
         * there are too many entries deleted inside the listpack. */
        entries -= to_delete;
        marked_deleted += to_delete;
        if (entries + marked_deleted > 10 && marked_deleted > entries/2) {
            /* TODO: perform a garbage collection. */
        }

        /* Update the listpack with the new pointer. */
        FUNC5(s->rax,ri.key,ri.key_len,lp,NULL);

        break; /* If we are here, there was enough to delete in the current
                  node, so no need to go to the next node. */
    }

    FUNC10(&ri);
    return deleted;
}