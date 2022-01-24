#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct swap_entries {int dummy; } ;
struct TYPE_16__ {void const* key; } ;
struct plain_hashmap_entry {void* value; TYPE_3__ b; } ;
struct TYPE_14__ {unsigned int last_rem_idx; int /*<<< orphan*/  rem_count; int /*<<< orphan*/  put_count; } ;
struct TYPE_15__ {TYPE_1__ debug; } ;
struct TYPE_17__ {TYPE_2__ b; } ;
struct TYPE_13__ {struct plain_hashmap_entry p; } ;
typedef  TYPE_4__ Hashmap ;

/* Variables and functions */
 unsigned int IDX_NIL ; 
 int /*<<< orphan*/  IDX_PUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_11__* FUNC1 (struct swap_entries*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_4__*,void const*) ; 
 unsigned int FUNC3 (TYPE_4__*,unsigned int,void const*) ; 
 int FUNC4 (TYPE_4__*,unsigned int,struct swap_entries*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 struct plain_hashmap_entry* FUNC6 (TYPE_4__*,unsigned int) ; 

int FUNC7(Hashmap *h, const void *key, void *value) {
        struct swap_entries swap;
        struct plain_hashmap_entry *e;
        unsigned hash, idx;

        FUNC0(h);

        hash = FUNC2(h, key);
        idx = FUNC3(h, hash, key);
        if (idx != IDX_NIL) {
                e = FUNC6(h, idx);
#if ENABLE_DEBUG_HASHMAP
                /* Although the key is equal, the key pointer may have changed,
                 * and this would break our assumption for iterating. So count
                 * this operation as incompatible with iteration. */
                if (e->b.key != key) {
                        h->b.debug.put_count++;
                        h->b.debug.rem_count++;
                        h->b.debug.last_rem_idx = idx;
                }
#endif
                e->b.key = key;
                e->value = value;
                FUNC5(h);

                return 0;
        }

        e = &FUNC1(&swap, IDX_PUT)->p;
        e->b.key = key;
        e->value = value;
        return FUNC4(h, hash, &swap, true);
}