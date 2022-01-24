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
struct Item {int seen; } ;
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 int FUNC0 (struct Item*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  item_seen ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct Item*) ; 

__attribute__((used)) static void FUNC5(void) {
        Set *m;
        struct Item items[4] = {};
        unsigned i;

        FUNC1(*(m = FUNC3(NULL)));
        for (i = 0; i < FUNC0(items) - 1; i++)
                FUNC1(FUNC4(m, items + i) == 1);

        m = FUNC2(m, item_seen);
        FUNC1(items[0].seen == 1);
        FUNC1(items[1].seen == 1);
        FUNC1(items[2].seen == 1);
        FUNC1(items[3].seen == 0);
}