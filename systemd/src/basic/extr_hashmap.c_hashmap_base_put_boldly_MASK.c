#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct swap_entries {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  key; } ;
struct TYPE_16__ {TYPE_1__ b; } ;
struct ordered_hashmap_entry {scalar_t__ iterate_next; scalar_t__ iterate_previous; TYPE_2__ p; } ;
struct TYPE_17__ {int /*<<< orphan*/  max_entries; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_3__ debug; } ;
struct TYPE_18__ {scalar_t__ iterate_list_tail; scalar_t__ iterate_list_head; } ;
typedef  TYPE_4__ OrderedHashmap ;
typedef  TYPE_5__ HashmapBase ;

/* Variables and functions */
 scalar_t__ HASHMAP_TYPE_ORDERED ; 
 scalar_t__ IDX_NIL ; 
 void* IDX_PUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 struct ordered_hashmap_entry* FUNC4 (struct swap_entries*,void*) ; 
 unsigned int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,unsigned int,struct swap_entries*) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 struct ordered_hashmap_entry* FUNC10 (TYPE_4__*,scalar_t__) ; 
 int FUNC11 (TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC12(HashmapBase *h, unsigned idx,
                                   struct swap_entries *swap, bool may_resize) {
        struct ordered_hashmap_entry *new_entry;
        int r;

        FUNC1(idx < FUNC7(h));

        new_entry = FUNC4(swap, IDX_PUT);

        if (may_resize) {
                r = FUNC11(h, 1);
                if (r < 0)
                        return r;
                if (r > 0)
                        idx = FUNC5(h, new_entry->p.b.key);
        }
        FUNC1(FUNC8(h) < FUNC7(h));

        if (h->type == HASHMAP_TYPE_ORDERED) {
                OrderedHashmap *lh = (OrderedHashmap*) h;

                new_entry->iterate_next = IDX_NIL;
                new_entry->iterate_previous = lh->iterate_list_tail;

                if (lh->iterate_list_tail != IDX_NIL) {
                        struct ordered_hashmap_entry *old_tail;

                        old_tail = FUNC10(lh, lh->iterate_list_tail);
                        FUNC1(old_tail->iterate_next == IDX_NIL);
                        old_tail->iterate_next = IDX_PUT;
                }

                lh->iterate_list_tail = IDX_PUT;
                if (lh->iterate_list_head == IDX_NIL)
                        lh->iterate_list_head = IDX_PUT;
        }

        FUNC2(FUNC6(h, idx, swap) == false);

        FUNC9(h);
#if ENABLE_DEBUG_HASHMAP
        h->debug.max_entries = MAX(h->debug.max_entries, n_entries(h));
#endif

        FUNC3(h);

        return 1;
}