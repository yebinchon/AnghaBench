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
struct hashmap_base_entry {int dummy; } ;
typedef  int /*<<< orphan*/  HashmapBase ;

/* Variables and functions */
 unsigned int IDX_NIL ; 
 struct hashmap_base_entry* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned int,void const*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,struct hashmap_base_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

void *FUNC5(HashmapBase *h, const void *key) {
        struct hashmap_base_entry *e;
        unsigned hash, idx;
        void *data;

        if (!h)
                return NULL;

        hash = FUNC1(h, key);
        idx = FUNC2(h, hash, key);
        if (idx == IDX_NIL)
                return NULL;

        e = FUNC0(h, idx);
        data = FUNC3(h, e);
        FUNC4(h, idx);

        return data;
}