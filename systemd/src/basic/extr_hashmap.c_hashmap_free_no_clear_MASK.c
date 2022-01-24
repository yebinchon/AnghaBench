#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mempool; } ;
struct TYPE_6__ {scalar_t__ n_direct_entries; size_t type; scalar_t__ from_pool; int /*<<< orphan*/  debug; int /*<<< orphan*/  has_indirect; } ;
typedef  TYPE_1__ HashmapBase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  debug_list ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  hashmap_debug_list ; 
 int /*<<< orphan*/  hashmap_debug_list_mutex ; 
 TYPE_3__* hashmap_type_info ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(HashmapBase *h) {
        FUNC1(!h->has_indirect);
        FUNC1(h->n_direct_entries == 0);

#if ENABLE_DEBUG_HASHMAP
        assert_se(pthread_mutex_lock(&hashmap_debug_list_mutex) == 0);
        LIST_REMOVE(debug_list, hashmap_debug_list, &h->debug);
        assert_se(pthread_mutex_unlock(&hashmap_debug_list_mutex) == 0);
#endif

        if (h->from_pool) {
                /* Ensure that the object didn't get migrated between threads. */
                FUNC2(FUNC4());
                FUNC5(hashmap_type_info[h->type].mempool, h);
        } else
                FUNC3(h);
}