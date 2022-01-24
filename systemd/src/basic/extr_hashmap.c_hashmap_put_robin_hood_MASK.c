#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct swap_entries {int dummy; } ;
typedef  scalar_t__ dib_raw_t ;
struct TYPE_11__ {unsigned int idx_lowest_entry; } ;
struct TYPE_10__ {int /*<<< orphan*/  put_count; } ;
struct TYPE_12__ {TYPE_2__ indirect; scalar_t__ has_indirect; TYPE_1__ debug; } ;
typedef  TYPE_3__ HashmapBase ;

/* Variables and functions */
 int /*<<< orphan*/  DIB_RAW_FREE ; 
 scalar_t__ DIB_RAW_REHASH ; 
 unsigned int IDX_PUT ; 
 unsigned int IDX_TMP ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC1 (TYPE_3__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct swap_entries*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,unsigned int,unsigned int) ; 
 scalar_t__* FUNC4 (TYPE_3__*) ; 
 unsigned int FUNC5 (TYPE_3__*,unsigned int) ; 

__attribute__((used)) static bool FUNC6(HashmapBase *h, unsigned idx,
                                   struct swap_entries *swap) {
        dib_raw_t raw_dib, *dibs;
        unsigned dib, distance;

#if ENABLE_DEBUG_HASHMAP
        h->debug.put_count++;
#endif

        dibs = FUNC4(h);

        for (distance = 0; ; distance++) {
                raw_dib = dibs[idx];
                if (FUNC0(raw_dib, DIB_RAW_FREE, DIB_RAW_REHASH)) {
                        if (raw_dib == DIB_RAW_REHASH)
                                FUNC2(h, swap, idx, IDX_TMP);

                        if (h->has_indirect && h->indirect.idx_lowest_entry > idx)
                                h->indirect.idx_lowest_entry = idx;

                        FUNC3(h, idx, distance);
                        FUNC2(h, swap, IDX_PUT, idx);
                        if (raw_dib == DIB_RAW_REHASH) {
                                FUNC2(h, swap, IDX_TMP, IDX_PUT);
                                return true;
                        }

                        return false;
                }

                dib = FUNC1(h, idx, raw_dib);

                if (dib < distance) {
                        /* Found a wealthier entry. Go Robin Hood! */
                        FUNC3(h, idx, distance);

                        /* swap the entries */
                        FUNC2(h, swap, idx, IDX_TMP);
                        FUNC2(h, swap, IDX_PUT, idx);
                        FUNC2(h, swap, IDX_TMP, IDX_PUT);

                        distance = dib;
                }

                idx = FUNC5(h, idx);
        }
}