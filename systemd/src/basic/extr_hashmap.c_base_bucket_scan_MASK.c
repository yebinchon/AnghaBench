#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct hashmap_base_entry {int /*<<< orphan*/  key; } ;
typedef  scalar_t__ dib_raw_t ;
struct TYPE_10__ {TYPE_1__* hash_ops; } ;
struct TYPE_9__ {scalar_t__ (* compare ) (int /*<<< orphan*/ ,void const*) ;} ;
typedef  TYPE_2__ HashmapBase ;

/* Variables and functions */
 scalar_t__ DIB_RAW_FREE ; 
 int IDX_NIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hashmap_base_entry* FUNC1 (TYPE_2__*,unsigned int) ; 
 unsigned int FUNC2 (TYPE_2__*,unsigned int,scalar_t__) ; 
 scalar_t__* FUNC3 (TYPE_2__*) ; 
 unsigned int FUNC4 (TYPE_2__*) ; 
 unsigned int FUNC5 (TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static unsigned FUNC7(HashmapBase *h, unsigned idx, const void *key) {
        struct hashmap_base_entry *e;
        unsigned dib, distance;
        dib_raw_t *dibs = FUNC3(h);

        FUNC0(idx < FUNC4(h));

        for (distance = 0; ; distance++) {
                if (dibs[idx] == DIB_RAW_FREE)
                        return IDX_NIL;

                dib = FUNC2(h, idx, dibs[idx]);

                if (dib < distance)
                        return IDX_NIL;
                if (dib == distance) {
                        e = FUNC1(h, idx);
                        if (h->hash_ops->compare(e->key, key) == 0)
                                return idx;
                }

                idx = FUNC5(h, idx);
        }
}