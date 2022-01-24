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
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC4(dict *ht, void *key, void *val) {
    dictEntry *entry, auxentry;

    /* Try to add the element. If the key
     * does not exists dictAdd will succeed. */
    if (FUNC0(ht, key, val) == DICT_OK)
        return 1;
    /* It already exists, get the entry */
    entry = FUNC1(ht, key);
    /* Free the old value and set the new one */
    /* Set the new value and free the old one. Note that it is important
     * to do that in this order, as the value may just be exactly the same
     * as the previous one. In this context, think to reference counting,
     * you want to increment (set), and then decrement (free), and not the
     * reverse. */
    auxentry = *entry;
    FUNC3(ht, entry, val);
    FUNC2(ht, &auxentry);
    return 0;
}