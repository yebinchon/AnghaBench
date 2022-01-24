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
 int GETFAIR_NUM_ENTRIES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 unsigned int FUNC2 () ; 

dictEntry *FUNC3(dict *d) {
    dictEntry *entries[GETFAIR_NUM_ENTRIES];
    unsigned int count = FUNC1(d,entries,GETFAIR_NUM_ENTRIES);
    /* Note that dictGetSomeKeys() may return zero elements in an unlucky
     * run() even if there are actually elements inside the hash table. So
     * when we get zero, we call the true dictGetRandomKey() that will always
     * yeld the element if the hash table has at least one. */
    if (count == 0) return FUNC0(d);
    unsigned int idx = FUNC2() % count;
    return entries[idx];
}