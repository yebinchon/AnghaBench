#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* node; int /*<<< orphan*/  zi; } ;
typedef  TYPE_1__ quicklistEntry ;
typedef  int /*<<< orphan*/  quicklist ;
struct TYPE_6__ {int /*<<< orphan*/  zl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

int FUNC6(quicklist *quicklist, long index, void *data,
                            int sz) {
    quicklistEntry entry;
    if (FUNC0(FUNC2(quicklist, index, &entry))) {
        /* quicklistIndex provides an uncompressed node */
        entry.node->zl = FUNC4(entry.node->zl, &entry.zi);
        entry.node->zl = FUNC5(entry.node->zl, entry.zi, data, sz);
        FUNC3(entry.node);
        FUNC1(quicklist, entry.node);
        return 1;
    } else {
        return 0;
    }
}