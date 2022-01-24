#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct plain_hashmap_entry {void* value; } ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int ENOENT ; 
 unsigned int IDX_NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned int,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct plain_hashmap_entry* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC5(Hashmap *h, const void *key, void *value) {
        struct plain_hashmap_entry *e;
        unsigned hash, idx;

        FUNC0(h);

        hash = FUNC1(h, key);
        idx = FUNC2(h, hash, key);
        if (idx == IDX_NIL)
                return -ENOENT;

        e = FUNC4(h, idx);
        e->value = value;
        FUNC3(h);

        return 0;
}