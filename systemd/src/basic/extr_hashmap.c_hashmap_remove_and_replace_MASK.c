#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct swap_entries {int dummy; } ;
struct TYPE_4__ {void const* key; } ;
struct plain_hashmap_entry {void* value; TYPE_1__ b; } ;
struct TYPE_6__ {void* key; } ;
struct TYPE_5__ {struct plain_hashmap_entry p; } ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int IDX_NIL ; 
 int /*<<< orphan*/  IDX_PUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* FUNC4 (struct swap_entries*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,void const*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,unsigned int,void const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int,struct swap_entries*,int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC10(Hashmap *h, const void *old_key, const void *new_key, void *value) {
        struct swap_entries swap;
        struct plain_hashmap_entry *e;
        unsigned old_hash, new_hash, idx_old, idx_new;

        if (!h)
                return -ENOENT;

        old_hash = FUNC5(h, old_key);
        idx_old = FUNC6(h, old_hash, old_key);
        if (idx_old == IDX_NIL)
                return -ENOENT;

        old_key = FUNC3(FUNC0(h), idx_old)->key;

        new_hash = FUNC5(h, new_key);
        idx_new = FUNC6(h, new_hash, new_key);
        if (idx_new != IDX_NIL)
                if (idx_old != idx_new) {
                        FUNC9(h, idx_new);
                        /* Compensate for a possible backward shift. */
                        if (old_key != FUNC3(FUNC0(h), idx_old)->key)
                                idx_old = FUNC8(FUNC0(h), idx_old);
                        FUNC1(old_key == FUNC3(FUNC0(h), idx_old)->key);
                }

        FUNC9(h, idx_old);

        e = &FUNC4(&swap, IDX_PUT)->p;
        e->b.key = new_key;
        e->value = value;
        FUNC2(FUNC7(h, new_hash, &swap, false) == 1);

        return 0;
}