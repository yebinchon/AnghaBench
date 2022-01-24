#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct swap_entries {int dummy; } ;
struct TYPE_3__ {void const* key; } ;
struct plain_hashmap_entry {void* value; TYPE_1__ b; } ;
struct TYPE_4__ {struct plain_hashmap_entry p; } ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int EEXIST ; 
 unsigned int IDX_NIL ; 
 int /*<<< orphan*/  IDX_PUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct swap_entries*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,void const*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,unsigned int,void const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,struct swap_entries*,int) ; 
 struct plain_hashmap_entry* FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC6(Hashmap *h, const void *key, void *value) {
        struct swap_entries swap;
        struct plain_hashmap_entry *e;
        unsigned hash, idx;

        FUNC0(h);

        hash = FUNC2(h, key);
        idx = FUNC3(h, hash, key);
        if (idx != IDX_NIL) {
                e = FUNC5(h, idx);
                if (e->value == value)
                        return 0;
                return -EEXIST;
        }

        e = &FUNC1(&swap, IDX_PUT)->p;
        e->b.key = key;
        e->value = value;
        return FUNC4(h, hash, &swap, true);
}