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
struct hashmap_base_entry {scalar_t__ key; } ;
typedef  int /*<<< orphan*/  HashmapBase ;

/* Variables and functions */
 unsigned int IDX_NIL ; 
 struct hashmap_base_entry* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,struct hashmap_base_entry*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

void *FUNC4(HashmapBase *h, bool remove, void **ret_key) {
        struct hashmap_base_entry *e;
        void *key, *data;
        unsigned idx;

        idx = FUNC2(h);
        if (idx == IDX_NIL) {
                if (ret_key)
                        *ret_key = NULL;
                return NULL;
        }

        e = FUNC0(h, idx);
        key = (void*) e->key;
        data = FUNC1(h, e);

        if (remove)
                FUNC3(h, idx);

        if (ret_key)
                *ret_key = key;

        return data;
}