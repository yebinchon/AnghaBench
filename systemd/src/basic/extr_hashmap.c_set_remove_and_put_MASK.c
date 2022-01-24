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
struct hashmap_base_entry {void const* key; } ;
struct TYPE_3__ {struct hashmap_base_entry b; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 unsigned int IDX_NIL ; 
 int /*<<< orphan*/  IDX_PUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct swap_entries*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,void const*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,unsigned int,void const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,struct swap_entries*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC6(Set *s, const void *old_key, const void *new_key) {
        struct swap_entries swap;
        struct hashmap_base_entry *e;
        unsigned old_hash, new_hash, idx;

        if (!s)
                return -ENOENT;

        old_hash = FUNC2(s, old_key);
        idx = FUNC3(s, old_hash, old_key);
        if (idx == IDX_NIL)
                return -ENOENT;

        new_hash = FUNC2(s, new_key);
        if (FUNC3(s, new_hash, new_key) != IDX_NIL)
                return -EEXIST;

        FUNC5(s, idx);

        e = &FUNC1(&swap, IDX_PUT)->p.b;
        e->key = new_key;
        FUNC0(FUNC4(s, new_hash, &swap, false) == 1);

        return 0;
}