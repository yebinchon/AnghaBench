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
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  rio ;
typedef  int /*<<< orphan*/  hashTypeIterator ;

/* Variables and functions */
 long long AOF_REWRITE_ITEMS_PER_CMD ; 
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  OBJ_HASH_KEY ; 
 int /*<<< orphan*/  OBJ_HASH_VALUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 long long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(rio *r, robj *key, robj *o) {
    hashTypeIterator *hi;
    long long count = 0, items = FUNC1(o);

    hi = FUNC0(o);
    while (FUNC2(hi) != C_ERR) {
        if (count == 0) {
            int cmd_items = (items > AOF_REWRITE_ITEMS_PER_CMD) ?
                AOF_REWRITE_ITEMS_PER_CMD : items;

            if (FUNC4(r,'*',2+cmd_items*2) == 0) return 0;
            if (FUNC6(r,"HMSET",5) == 0) return 0;
            if (FUNC5(r,key) == 0) return 0;
        }

        if (FUNC7(r, hi, OBJ_HASH_KEY) == 0) return 0;
        if (FUNC7(r, hi, OBJ_HASH_VALUE) == 0) return 0;
        if (++count == AOF_REWRITE_ITEMS_PER_CMD) count = 0;
        items--;
    }

    FUNC3(hi);

    return 1;
}