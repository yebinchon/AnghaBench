#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct ordered_hashmap_entry {scalar_t__ iterate_next; scalar_t__ iterate_previous; } ;
typedef  scalar_t__ dib_raw_t ;
struct TYPE_14__ {unsigned int last_rem_idx; int /*<<< orphan*/  rem_count; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_1__ debug; } ;
struct TYPE_15__ {scalar_t__ iterate_list_tail; unsigned int iterate_list_head; } ;
typedef  TYPE_2__ OrderedHashmap ;
typedef  TYPE_3__ HashmapBase ;

/* Variables and functions */
 scalar_t__ DIB_RAW_FREE ; 
 scalar_t__ HASHMAP_TYPE_ORDERED ; 
 scalar_t__ IDX_NIL ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 unsigned int FUNC3 (TYPE_3__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,unsigned int,unsigned int) ; 
 scalar_t__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 unsigned int FUNC9 (TYPE_3__*,unsigned int) ; 
 struct ordered_hashmap_entry* FUNC10 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static void FUNC11(HashmapBase *h, unsigned idx) {
        unsigned left, right, prev, dib;
        dib_raw_t raw_dib, *dibs;

        dibs = FUNC7(h);
        FUNC1(dibs[idx] != DIB_RAW_FREE);

#if ENABLE_DEBUG_HASHMAP
        h->debug.rem_count++;
        h->debug.last_rem_idx = idx;
#endif

        left = idx;
        /* Find the stop bucket ("right"). It is either free or has DIB == 0. */
        for (right = FUNC9(h, left); ; right = FUNC9(h, right)) {
                raw_dib = dibs[right];
                if (FUNC0(raw_dib, 0, DIB_RAW_FREE))
                        break;

                /* The buckets are not supposed to be all occupied and with DIB > 0.
                 * That would mean we could make everyone better off by shifting them
                 * backward. This scenario is impossible. */
                FUNC1(left != right);
        }

        if (h->type == HASHMAP_TYPE_ORDERED) {
                OrderedHashmap *lh = (OrderedHashmap*) h;
                struct ordered_hashmap_entry *le = FUNC10(lh, idx);

                if (le->iterate_next != IDX_NIL)
                        FUNC10(lh, le->iterate_next)->iterate_previous = le->iterate_previous;
                else
                        lh->iterate_list_tail = le->iterate_previous;

                if (le->iterate_previous != IDX_NIL)
                        FUNC10(lh, le->iterate_previous)->iterate_next = le->iterate_next;
                else
                        lh->iterate_list_head = le->iterate_next;
        }

        /* Now shift all buckets in the interval (left, right) one step backwards */
        for (prev = left, left = FUNC9(h, left); left != right;
             prev = left, left = FUNC9(h, left)) {
                dib = FUNC3(h, left, dibs[left]);
                FUNC1(dib != 0);
                FUNC5(h, NULL, left, prev);
                FUNC6(h, prev, dib - 1);
        }

        FUNC4(h, prev);
        FUNC8(h);
        FUNC2(h);
}